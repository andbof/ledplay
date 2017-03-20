#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "button.h"
#include "clock.h"
#include "gpio.h"
#include "interrupt.h"
#include "memorymap.h"
#include "sleep.h"
#include "uart.h"

static void print_reset_reason(void)
{
	uart0_send_str("Reset reason:\r\n");
	if (SIM_SRSID & SIM_SRSID_SACKERR)
		uart0_send_str("  Stop mode acknowledge error\r\n");
	if (SIM_SRSID & SIM_SRSID_MDMAP)
		uart0_send_str("  MDM-AP system reset request\r\n");
	if (SIM_SRSID & SIM_SRSID_SW)
		uart0_send_str("  Software request\r\n");
	if (SIM_SRSID & SIM_SRSID_LOCKUP)
		uart0_send_str("  Core lockup\r\n");
	if (SIM_SRSID & SIM_SRSID_POR)
		uart0_send_str("  Power-on reset\r\n");
	if (SIM_SRSID & SIM_SRSID_PIN)
		uart0_send_str("  External reset pin\r\n");
	if (SIM_SRSID & SIM_SRSID_WDOG)
		uart0_send_str("  Watchdog reset\r\n");
	if (SIM_SRSID & SIM_SRSID_LOC)
		uart0_send_str("  Internal clock source module reset\r\n");
	if (SIM_SRSID & SIM_SRSID_LVD)
		uart0_send_str("  Low voltage detect\r\n");
}

static void init_spmsc(void)
{
	/*
	 * Disable low voltage detection, savings measured at about 140 uA
	 */
	PMC_SPMSC1 = 0x00;
	PMC_SPMSC2 = 0x00;
}

int main(void)
{
	init_spmsc();
	init_pinmux();
	init_clock();
	init_uart();
	init_buttons();
	enable_interrupts();

	uart0_send_str("LEDPLAY v1.0\r\n");
	print_reset_reason();

	sleep_forever();

	return 0;
}
