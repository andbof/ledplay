#include "hardware.h"
#include "interrupt.h"
#include "memorymap.h"
#include "uart.h"

static char tx_buf[256];

/*
 * Initialize buffer indeces to something that will wrap around soon to detect
 * bugs earlier.
 */
static uint8_t next_tx_buf_idx = 250;
static uint8_t sent_tx_buf_idx = 249;

#define BAUD 115200
#define SBR (FCPU / (16 * BAUD))

void init_uart(void)
{
	SIM_SCGC |= UART0;
	UART0_BDH = (SBR >> 8) & 0x0f;
	UART0_BDL = SBR;
	UART0_C1 = UARTSWAI;
	UART0_C2 = C2_TE;
	UART0_C3 = 0x00;

	/* Table 3-8 Interrupt vector assignments states UART0 is IRQ12 */
	NVIC_ICPR |= (1 << 12);
	NVIC_ISER |= (1 << 12);
}

static void wait_for_no_tx(void)
{
	while (!(UART0_S1 & TDRE));
}

static void send_next(void)
{
	wait_for_no_tx();
	sent_tx_buf_idx += 1;
	sent_tx_buf_idx %= sizeof(tx_buf);
	UART0_D = tx_buf[sent_tx_buf_idx];
}

static void wait_for_buffer_space(void)
{
	while (sent_tx_buf_idx == ((next_tx_buf_idx + 1) % sizeof(tx_buf)));
}

static void push_char(char c)
{
	wait_for_buffer_space();
	tx_buf[next_tx_buf_idx++] = c;
	next_tx_buf_idx %= sizeof(tx_buf);

	disable_interrupts();
	if (!(UART0_C2 & UART_TIE)) {
		UART0_C2 |= UART_TIE;
		send_next();
	}
	enable_interrupts();
}

void uart0_send_str(const char *c)
{
	for (const char *_c = c; *_c; _c++)
		push_char(*_c);
}

int uart0_buffer_empty(void)
{
	disable_interrupts();
	int is_empty = (sent_tx_buf_idx == ((next_tx_buf_idx - 1) % sizeof(tx_buf)));
	enable_interrupts();
	return is_empty;
}

__attribute__((interrupt("IRQ")))
void uart0_interrupt(void)
{
	if (uart0_buffer_empty()) {
		UART0_C2 &= ~UART_TIE;
		return;
	}

	send_next();
}

void uart0_sync_send(char c)
{
	disable_interrupts();
	wait_for_no_tx();
	UART0_D = c;
	while (UART0_S1 & TDRE);
	wait_for_no_tx();
	enable_interrupts();
}

int uart0_busy(void)
{
	return ((!(UART0_S1 & S1_TC)) || (!(UART0_S1 & TDRE)) || (UART0_S2 & RAF));
}
