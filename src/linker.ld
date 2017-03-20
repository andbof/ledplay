/**
 * Linker script for the KE04 device
 */

OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)

/**
 * KE04 Reference Manual 3.7.3.2 ("SRAM ranges") & Table 4-1
 * "The on-chip SRAM is split into two ranges; 1/4 is allocated to SRAM_L and
 * 3/4 is allocated to SRAM_U."
 *
 * All KE04 devices have 1 kB of RAM
 */
MEMORY
{
	FLASH(rx): ORIGIN = 0x00000000, LENGTH = 8K
	SRAM(rwx) : ORIGIN = 0x1FFFFF00, LENGTH = 1K
}

/*
 * The top of the stack is the end of SRAM
 */
STACK_SIZE = 256;
__ram_start = 0x1fffff00;
__stack = (0x1fffff00+1K);

SECTIONS
{
    .flash :
    {
        . = ALIGN(4);
        KEEP(*(.interrupt_vector_table))
	. = 0x400;
        KEEP(*(.flashfield))
    } > FLASH
    .init :
    {
	. = ALIGN(4);
	*(.init)
        *(.startup)
    } > FLASH
    .text :
    {
        . = ALIGN(4);
        *(.text)
        *(.text.*)
        *(.rodata)
        *(.rodata*)
        __data_in_flash__ = ABSOLUTE(.);
    } > FLASH
    .data :
    {
        . = ALIGN(4);
	PROVIDE(__data_start__ = ABSOLUTE(.));
        *(.data)
        *(.data.*)
    } > SRAM AT > FLASH
    .bss :
    {
	. = ALIGN(4);
        PROVIDE(__bss_start__ = ABSOLUTE(.));
        *(.bss)
        *(.bss.*)
	*(COMMON)
        __bss_end__ = ABSOLUTE(.);
    } > SRAM
    PROVIDE(end = ABSOLUTE(.));
    PROVIDE(__data_size__ = SIZEOF(.data));
    PROVIDE(__bss_size__ = SIZEOF(.bss));

    _start_stack = __stack - STACK_SIZE;
    __stack = __stack;
}
