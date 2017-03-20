#ifndef _WATCHDOG_H
#define _WATCHDOG_H

#include "memorymap.h"

__attribute__((always_inline))
static void inline kick_watchdog(void)
{
	/*
	 * Page 63 in Kinetis KE04Z reference manual
	 */
	WDOG_CNT = 0x02a6;
	WDOG_CNT = 0x80b4;
}

__attribute__((always_inline))
static void inline unlock_watchdog(void)
{
	WDOG_CNT = 0x20c5;
	WDOG_CNT = 0x28d9;
}

__attribute__((always_inline))
static void inline disable_watchdog(void)
{
	/*
	 * 16.3.2 "Configuring the Watchdog" in KE04Z reference manual
	 *
	 * The Kinetis KE chips seem to be very picky about the sequence when
	 * reconfiguring the watchdog so make sure this is correct after any
	 * modifications.
	 */
	unlock_watchdog();
	WDOG_WINH = 0x00;
	WDOG_WINL = 0x00;
	WDOG_TOVALH = 0x10;
	WDOG_TOVALL = 0x10;
	WDOG_CS2 = 0x01;
	WDOG_CS1 = WDOG_UPDATE;
}

#endif
