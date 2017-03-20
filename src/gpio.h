#ifndef _GPIO_H
#define _GPIO_H

#include <stdint.h>

void toggle_gpio(uint32_t pin);
void set_gpio(uint32_t pin, uint8_t value);
int get_gpio(uint32_t pin);
void set_gpio_as_output(uint32_t pin);
void set_gpio_as_input(uint32_t pin);
void init_pinmux(void);

#endif
