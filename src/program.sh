#!/bin/sh

# This is a quick and dirty script which will program the Kinetis CPU with the
# main application using OpenOCD. It assumes you're connecting via an Olimex
# ARM-USB-OCD-H (if not, you need to adjust the call below).

set -x

BINARY="$HOME/src/ledplay/src/main.hex"
OPENOCD_DIR="$HOME/opt/openocd"

"$OPENOCD_DIR/bin/openocd" \
    -f "$OPENOCD_DIR/share/openocd/scripts/interface/ftdi/olimex-arm-usb-ocd-h.cfg" \
    -f "$OPENOCD_DIR/share/openocd/scripts/interface/ftdi/olimex-arm-jtag-swd.cfg" \
    -f "$OPENOCD_DIR/share/openocd/scripts/target/ke04.cfg" \
    -c "init; program $BINARY; reset; exit"

# For the initial reset, something like this was used:
# -c "reset_config srst_only; init; reset halt; kinetis_ke mdm mass_erase"
