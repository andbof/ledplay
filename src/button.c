#include <stdio.h>

#include "button.h"
#include "gpio.h"
#include "interrupt.h"
#include "memorymap.h"
#include "sleep.h"
#include "uart.h"

static const uint8_t led_states[NUM_STAGES] = {
	0x00,	0x02,	0x04,	0x06,	0x08,	0x0a,	0x0c,	0x0e,
	0x40,	0x42,	0x44,	0x46,	0x48,	0x4a,	0x4c,	0x4e,
};

static volatile uint8_t buttons_pressed;
static volatile uint8_t stage;

/*
 * See schematic, main page
 *
 * SW1_STATE -> PTA1 -> KBI0_P1
 * SW2_STATE -> PTA2 -> KBI0_P2
 * SW3_STATE -> PTA3 -> KBI0_P3
 * SW4_STATE -> PTB2 -> KBI0_P6
 *
 * LED1_CTRL -> PTC0
 * LED1_CTRL -> PTC1
 * LED1_CTRL -> PTC2
 * LED1_CTRL -> PTC3
 */

static void init_interstage_timer(void)
{
	/* Table 3-8 "Interrupt vector assignments" states PIT_CH0 is IRQ22 */
	NVIC_ICPR |= (1 << 22);
	NVIC_ISER |= (1 << 22);

	PIT_TCTRL0 = 0x00;
	PIT_LDVAL0 = 7374631; /* 0.5 seconds */
	PIT_MCR = 0x01;
	PIT_TCTRL0 = PIT_TIE;
}

static void start_interstage_timer(void)
{
	PIT_TCTRL0 |= PIT_TEN;
}

static void stop_interstage_timer(void)
{
	PIT_TCTRL0 &= ~PIT_TEN;
}

static void init_inactivity_timer(void)
{
	/* Table 3-8 "Interrupt vector assignments" states PIT_CH1 is IRQ23 */
	NVIC_ICPR |= (1 << 23);
	NVIC_ISER |= (1 << 23);

	PIT_TCTRL1 = 0x00;
	PIT_LDVAL1 = 442477877; /* 30 seconds */
	PIT_MCR = 0x01;
	PIT_TCTRL1 = PIT_TIE;
}

static void start_inactivity_timer(void)
{
	PIT_TCTRL1 |= PIT_TEN;
}

static void stop_inactivity_timer(void)
{
	PIT_TCTRL1 &= ~PIT_TEN;
}

static void kick_inactivity_timer(void)
{
	disable_interrupts();
	stop_inactivity_timer();
	start_inactivity_timer();
	enable_interrupts();
}

static void set_button_led(uint8_t button, uint8_t state)
{
	switch (button) {
	case 0:
		set_gpio(PTC0, state);
		break;
	case 1:
		set_gpio(PTC1, state);
		break;
	case 2:
		set_gpio(PTC2, state);
		break;
	case 3:
		set_gpio(PTC3, state);
		break;
	default:
		/*
		 * This should never happen.
		 */
		do {} while (0);
	}
}

static void enable_led_power(void)
{
	set_gpio(PTB5, 1);
}

static void disable_led_power(void)
{
	set_gpio(PTB5, 0);
}

static void show_state(void)
{
	uint8_t leds[NUM_BUTTONS] = {
		led_states[stage] & 0x02,
		led_states[stage] & 0x04,
		led_states[stage] & 0x08,
		led_states[stage] & 0x40,
	};

	set_button_led(0, leds[0]);
	set_button_led(1, leds[1]);
	set_button_led(2, leds[2]);
	set_button_led(3, leds[3]);

	/*
	 * If any buttons are lit, enable only the requisite KBI interrupts and
	 * the LED voltage regulator. If all are dark, enable all interrupts
	 * (this is the initial stage), and we can go to a deep sleep mode
	 * since no timers will be running.
	 *
	 * If all interrupts for unlit buttons are enabled, holding down an
	 * unlit hogs the interrupt.
	 */
	uint8_t pe_reg = leds[0] | leds[1] | leds[2] | leds[3];
	if (pe_reg) {
		enable_led_power();
	} else {
		set_next_sleepmode(SLEEP_STOP);
		pe_reg = (1 << 6 | 1 << 3 | 1 << 2 | 1 << 1);
	}
	KBI0_PE = pe_reg;

}

static void go_to_next_stage(void)
{
	uart0_send_str("Moving to next stage\r\n");
	buttons_pressed = 0;
	stage++;
	if (stage >= NUM_STAGES)
		stage = 1;
	show_state();
}

static uint8_t any_button_pressed(void)
{
	return !!(get_gpio(PTA1) | get_gpio(PTA2) |
			get_gpio(PTA3) | get_gpio(PTB2));
}

static void ack_pit0_interrupt(void)
{
	PIT_TFLG0 |= TIF;
}

__attribute__((interrupt("IRQ")))
void interstage_timer_fired(void)
{
	if (!any_button_pressed()) {
		/*
		 * Don't go to next stage as long as at least one button is
		 * being continuously pressed.
		 */
		stop_interstage_timer();
		start_inactivity_timer();
		go_to_next_stage();
	}

	ack_pit0_interrupt();
}

static void set_initial_button_state(void)
{
	disable_led_power();
	stage = 0;
	show_state();
}

static void ack_pit1_interrupt(void)
{
	PIT_TFLG1 |= TIF;
}

__attribute__((interrupt("IRQ")))
void inactivity_timer_fired(void)
{
	stop_inactivity_timer();
	set_initial_button_state();
	ack_pit1_interrupt();
}

uint8_t get_button(uint8_t button)
{
	switch (button) {
	case 0:
		return get_gpio(PTA1);
	case 1:
		return get_gpio(PTA2);
	case 2:
		return get_gpio(PTA3);
	case 3:
		return get_gpio(PTB2);
	default:
		/*
		 * This should never happen.
		 */
		return 0;
	}
}

void init_buttons(void)
{
	/*
	 * Table 3-8 Interrupt vector assignments states KBI0 is IRQ24
	 * Also see NXP AN4942 ("Getting Started with Kinetis EA series MCUs")
	 */
	NVIC_ICPR |= (1 << 24);
	NVIC_ISER |= (1 << 24);

	/* See 34.5.4 "KBI initialization" */
	KBI0_SC = (KBI0_SC & ~KBIE);
	/* PTA1, PTA2, PTA3, PTB2 */
	KBI0_ES = (1 << 6 | 1 << 3 | 1 << 2 | 1 << 1);
	KBI0_PE = (1 << 6 | 1 << 3 | 1 << 2 | 1 << 1);
	KBI0_SC |= KBACK;
	KBI0_SC |= KBIE;

	init_interstage_timer();
	init_inactivity_timer();

	set_gpio_as_output(PTB5);
	set_gpio_as_output(PTC0);
	set_gpio_as_output(PTC1);
	set_gpio_as_output(PTC2);
	set_gpio_as_output(PTC3);
	set_gpio_as_input(PTA1);
	set_gpio_as_input(PTA2);
	set_gpio_as_input(PTA3);
	set_gpio_as_input(PTB2);

	set_initial_button_state();
}

static void ack_kbi0_interrupt(void)
{
	KBI0_SC = KBI0_SC | KBACK;
}

__attribute__((interrupt("IRQ")))
void button_pressed(void)
{
	/*
	 * The KBI interrupt unfortunately does not trigger as long as at least
	 * one pin is active. This means simultaneous keypresses cannot be
	 * detected, and this "feature" is unfortunately not documented in the
	 * KE04 reference manual. This was found in the NXP community forum:
	 * https://community.nxp.com/thread/38602
	 *
	 * Therefore, we disable the KBI interrupt for the active pin when the
	 * press is serviced by clearing the corresponding bit in KBI0_PE.  The
	 * requisite ones are then enabled again when moving to the next state.
	 */

	kick_inactivity_timer();

	if (get_button(0) && (led_states[stage] & 0x02)) {
		uart0_send_str("1 pressed\r\n");
		set_button_led(0, 0);
		buttons_pressed |= 0x02;
		KBI0_PE &= ~0x02;
	}

	if (get_button(1) && (led_states[stage] & 0x04)) {
		uart0_send_str("2 pressed\r\n");
		set_button_led(1, 0);
		buttons_pressed |= 0x04;
		KBI0_PE &= ~0x04;
	}

	if (get_button(2) && (led_states[stage] & 0x08)) {
		uart0_send_str("3 pressed\r\n");
		set_button_led(2, 0);
		buttons_pressed |= 0x08;
		KBI0_PE &= ~0x08;
	}

	if (get_button(3) && (led_states[stage] & 0x40)) {
		uart0_send_str("4 pressed\r\n");
		set_button_led(3, 0);
		buttons_pressed |= 0x40;
		KBI0_PE &= ~0x40;
	}

	/*
	 * Since the interstage timer (PIT_CH0) isn't active in stop mode, if
	 * we should move to the next stage we need to switch to the wait sleep
	 * mode.
	 */
	if (!stage) {
		uart0_send_str("Initial stage!\r\n");
		set_next_sleepmode(SLEEP_WAIT);
		start_interstage_timer();
	} else if (buttons_pressed == led_states[stage]) {
		disable_led_power();
		set_next_sleepmode(SLEEP_WAIT);
		uart0_send_str("Stage cleared\r\n");
		stop_inactivity_timer();
		start_interstage_timer();
	}

	/*
	 * Acknowledge interrupt now. This can't be done in the beginning of
	 * this handler (even if KBIE is disabled) because the KBI interrupt in
	 * the CPU goes bonkers when the KBI0_PE register is changed for an
	 * active pin if the interrupt has already been acknowledged.
	 */
	ack_kbi0_interrupt();
}
