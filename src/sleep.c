#include "clock.h"
#include "memorymap.h"
#include "interrupt.h"
#include "sleep.h"
#include "uart.h"

static enum sleep_modes sleep_mode;

void init_sleep(void)
{
	/* SEVONPEND = only enabled interrupts wakes up the CPU */
	SCR &= ~SEVONPEND;
	/* SLEEPONEXIT = enter sleep, or deep sleep, on return from an ISR to Thread mode */
	SCR |= SLEEPONEXIT;
}

void set_next_sleepmode(enum sleep_modes mode)
{
	sleep_mode = mode;
}

static void set_sleep_stopmode(void)
{
	SCR |= SLEEPDEEP;
	while (!(SCR & SLEEPDEEP));
}

static void set_sleep_waitmode(void)
{
	SCR &= ~SLEEPDEEP;
	while (SCR & SLEEPDEEP);
}

static void set_sleep_mode(enum sleep_modes mode)
{
	switch (mode) {
	case SLEEP_WAIT:
		set_sleep_waitmode();
		break;
	case SLEEP_STOP:
		set_sleep_stopmode();
		break;
	default:
		/*
		 * This should never happen.
		 */
		break;
	}
}

__attribute__((noreturn))
void sleep_forever(void)
{
	for (;;) {
		while (!uart0_buffer_empty() || uart0_busy());

		disable_interrupts();
		/*
		 * Something might have just pushed a new character before
		 * we disabled interrupts. Let that single character be
		 * sent.
		 */
		while (uart0_busy());
		set_sleep_mode(sleep_mode);
		/*
		 * Going to sleep with interrupts disabled is fine, the CPU
		 * will wake up as it's supposed to, but the interrupt will be
		 * masked.
		 */
		asm volatile(
			"\t\nwfi"
			::
		);
		/*
		 * Stopping the oscillator in stop mode saves about 500 uA, but
		 * we need to ensure it's up and running before serving the
		 * pending interrupts.
		 */
		wait_for_osc();
		enable_interrupts();
	}
}
