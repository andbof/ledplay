#ifndef _UART_H
#define _UART_H

void init_uart(void);
void uart0_send_str(const char *c);
int uart0_buffer_empty(void);
void uart0_interrupt(void);
void uart0_sync_send(char c);
int uart0_busy(void);

#endif
