#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "por.h"
#include "watchdog.h"

extern void * const __bss_start__;
extern const uint32_t __bss_size__;
extern void * const __data_start__;
extern const void * const __data_in_flash__;
extern const uint32_t __data_size__;

__attribute__((naked,noreturn))
void power_on_reset(void)
{
	disable_watchdog();
	asm volatile (
		"\t\nb	_start"
		::
	);
}
