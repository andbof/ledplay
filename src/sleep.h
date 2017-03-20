#ifndef _SLEEP_H
#define _SLEEP_H

enum sleep_modes {
	SLEEP_WAIT,
	SLEEP_STOP,
};

void set_next_sleepmode(enum sleep_modes mode);
void init_sleep(void);
void sleep_forever(void) __attribute__((noreturn));

#endif
