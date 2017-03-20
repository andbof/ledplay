#include "clock.h"
#include "memorymap.h"

static void set_fll_bypass_low_pwr(void)
{
	ICS_C1 = 1 << 7;
	while ((ICS_S & CLKST) != 1 << 3);
}

void wait_for_osc(void)
{
	while (!(OSC_CR & OSCINIT));
}

static void set_dividers(void)
{
	/* Bus freq == XTAL, FLL powered off */
	ICS_C2 = LP;
	/*
	 * Section 12.2.8 ("Clock Divider Register (SIM_CLKDIV)") in the
	 * Kinetis KE04Z ref. manual states this register should be all zeroes,
	 * but it apparently isn't because the clock is divided by two on
	 * startup.
	 */
	SIM_CLKDIV = 0x00000000;
}

void init_clock(void)
{
	OSC_CR = OSCEN | OSCOS | RANGE;
	wait_for_osc();
	set_dividers();
	set_fll_bypass_low_pwr();
}
