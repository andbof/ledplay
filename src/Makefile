DEBUG=-g

PREFIX=arm-none-eabi-

CFLAGS=-O2 -std=gnu99 -Wall -Werror -Wno-unused-parameter -Wtype-limits \
       -fshort-wchar -mthumb \
	-march=armv6-m -mcpu=cortex-m0plus -std=gnu99 -fshort-enums \
	-flto -ffat-lto-objects -ffreestanding \
	${DEBUG} -mthumb -mno-thumb-interwork
CPPFLAGS=
LDFLAGS=-O2 -mcpu=cortex-m0plus -mthumb \
	--specs=nano.specs --specs=nosys.specs \
	-flto -Wl,--relax -Wl,--section-start=.flashfield=0x400 \
	-Wl,--script=linker.ld \
	${DEBUG}

CC=${PREFIX}gcc
LD=${PREFIX}ld ${LDFLAGS}
OBJCOPY=${PREFIX}objcopy
SIZE=${PREFIX}size

all: main.hex main.bin main.size

.PHONY: clean
clean:
	rm -f main main.bin main.hex
	rm -f *.o

main:	button.o clock.o flashfield.o gpio.o interrupt.o libc.o main.o por.o sleep.o uart.o

main.bin: main
	$(OBJCOPY) -Sg -O binary $< $@

main.hex: main
	$(OBJCOPY) -Sg -O ihex $< $@

%.size: %
	$(SIZE) $< | tee $@
