#ifndef _INTERRUPT_H
#define _INTERRUPT_H

__attribute__((always_inline))
static void inline disable_interrupts(void)
{
	asm volatile(
		"\t\ncpsid i"
		:::
		"memory"
	);
}

__attribute__((always_inline))
static void inline enable_interrupts(void)
{
	asm volatile(
		"\t\ncpsie i"
		:::
		"memory"
	);
}

#endif
