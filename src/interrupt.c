#include <stdlib.h>

#include "button.h"
#include "interrupt.h"
#include "memorymap.h"
#include "por.h"
#include "uart.h"

/*
 * See Table 3-8. "Interrupt vector assignments" in "KE04 Sub-Family Reference
 * Manual" (MKE04P24M48SF0RM, Rev 3, February 2014).
 */
struct {
	void *sp;
	void *pc;
	void *nmi;
	void *hardfault;
	void *pad1[7];
	void *svc;
	void *pad2[2];
	void *pendsrvreq;
	void *systick;
	void *pad3[5];
	void *ftmre;
	void *pmc;
	void *irq;
	void *i2c0;
	void *pad4;
	void *spi0;
	void *pad5;
	void *uart0;
	void *pad6[2];
	void *adc0;
	void *acmp0;
	void *ftm0;
	void *pad7;
	void *ftm2;
	void *rtc;
	void *acmp1;
	void *pit_ch0;
	void *pit_ch1;
	void *kbi0;
	void *kbi1;
	void *pad8;
	void *ics;
	void *wdog;
	void *pwt;
	void *pad9[2];
} __attribute__((packed))
const vectors
__attribute__((used,section(".interrupt_vector_table")))
= {
	.sp = (void*)0x200002ff, /* FIXME: should use a stack symbol here */
	.pc = power_on_reset,
	.uart0 = uart0_interrupt,
	.pit_ch0 = interstage_timer_fired,
	.pit_ch1 = inactivity_timer_fired,
	.kbi0 = button_pressed,
};
