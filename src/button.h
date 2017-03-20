#ifndef _BUTTON_H
#define _BUTTON_H

#include <stdint.h>

#define NUM_BUTTONS 4
#define NUM_STAGES 16

void interstage_timer_fired(void);
void inactivity_timer_fired(void);
void init_buttons(void);
uint8_t get_button(uint8_t button);
void button_pressed(void) __attribute__((interrupt("IRQ")));

#endif
