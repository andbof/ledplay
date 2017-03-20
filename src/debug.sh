#!/bin/sh

# This is a quick and dirty script which will debug the Kinetis CPU running the
# main application using OpenOCD.  Once it's up and running, use gdb to
# interface to it (something like "arm-none-eabi-gbi $BINARY").
# It assumes you're using an Olimex ARM-USB-OCD-H (if not, adjust the calls
# below).

set -x

BINARY="$HOME/src/ledplay/src/main.hex"
OPENOCD_DIR="$HOME/opt/openocd"

"$OPENOCD_DIR/bin/openocd" \
    -f "$OPENOCD_DIR/share/openocd/scripts/interface/ftdi/olimex-arm-usb-ocd-h.cfg" \
    -f "$OPENOCD_DIR/share/openocd/scripts/interface/ftdi/olimex-arm-jtag-swd.cfg" \
    -f "$OPENOCD_DIR/share/openocd/scripts/target/ke04.cfg"
