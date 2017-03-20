#include <stdint.h>

#include "gpio.h"
#include "memorymap.h"

static void set_gpio_on(uint32_t pin)
{
	GPIOA_PSOR = pin;
}

static void set_gpio_off(uint32_t pin)
{
	GPIOA_PCOR = pin;
}

void toggle_gpio(uint32_t pin)
{
	GPIOA_PTOR = pin;
}

void set_gpio(uint32_t pin, uint8_t value)
{
	if (value)
		set_gpio_on(pin);
	else
		set_gpio_off(pin);
}

int get_gpio(uint32_t pin)
{
	return !!(GPIOA_PDIR & pin);
}

void set_gpio_as_output(uint32_t pin)
{
	GPIOA_PDDR |= pin;
	GPIOA_PIDR = (GPIOA_PIDR & ~pin);
}

void set_gpio_as_input(uint32_t pin)
{
	GPIOA_PDDR = (GPIOA_PDDR & ~pin);
	GPIOA_PIDR = (GPIOA_PIDR & ~pin);
}

void init_pinmux(void)
{
	SIM_SCGC = KBI0 | UART0 | SWD | FLASH | PIT;

	/* 10.2.1 Signal Multiplexing and Pin Assignments */

	/* PTB5 = ALT0 (GPIO) (default ACMP1_OUT) */

	/* PTB4 = ALT0 (GPIO) */
	SIM_SOPT &= ~NMIE;

	/* PTC3 = ALT2 (FTM2_CH3) */
	SIM_PINSEL &= ~FTM2PS3;

	/* PTC2 = ALT2 (FTM2_CH2) */
	SIM_PINSEL &= ~FTM2PS2;

	/* PTC1 = ALT2 (FTM2_CH1) */


	/* PTC0 = ALT2 (FTM2_CH0) */

	/* PTB3 = ALT0 (GPIO) */

	/* PTB2 = ALT1 (KBI0_P6) */

	/* PTB1 = ALT2 (UART0_TX) */
	SIM_PINSEL &= ~UART0PS;

	/* PTB0 = ALT2 (UART0_RX) */

	/* PTA3 = ALT1 (KBI0_P3) */

	/* PTA2 = ALT1 (KBI0_P2) */

	/* PTA1 = ALT1 (KBI0_P1) */

}

