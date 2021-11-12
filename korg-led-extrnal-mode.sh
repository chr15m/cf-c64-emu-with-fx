#!/bin/sh

# put the korg nanokontrol 2 into "external" LED mode
# by sending raw magic sysex bytes using linux's amidi command
# this mode allows you to send control signals to turn LEDs on and off

# original bytes from the overtone magicians:
# https://github.com/overtone/overtone/blob/master/src/overtone/device/midi/nanoKONTROL2.clj#L133-L166

sudo amidi -p hw:1,0,0 -S "F0 7E 7F 06 01 F7
F0 42 40 00 01 13 00 1F  12 00 F7
F0 7E 7F 06 01 F7
F0 42 40 00 01 13 00 7F  7F 02 03 05 40 00 00 00
              01 10 01 00 00 00 00 7F  00 01 00 10 00 00 7F 00
              01 00 20 00 7F 00 00 01  00 30 00 7F 00 00 01 00
              40 00 7F 00 10 00 01 00  01 00 7F 00 01 00 00 11
              00 7F 00 01 00 00 21 00  7F 00 01 00 31 00 00 7F
              00 01 00 41 00 00 7F 00  10 01 00 02 00 00 7F 00
              01 00 12 00 7F 00 00 01  00 22 00 7F 00 00 01 00
              32 00 7F 00 01 00 00 42  00 7F 00 10 01 00 00 03
              00 7F 00 01 00 00 13 00  7F 00 01 00 23 00 00 7F
              00 01 00 33 00 00 7F 00  01 00 43 00 7F 00 00 10
              01 00 04 00 7F 00 00 01  00 14 00 7F 00 00 01 00
              24 00 7F 00 01 00 00 34  00 7F 00 01 00 00 44 00
              7F 00 10 01 00 00 05 00  7F 00 01 00 15 00 00 7F
              00 01 00 25 00 00 7F 00  01 00 35 00 7F 00 00 01
              00 45 00 7F 00 00 10 01  00 06 00 7F 00 00 01 00
              16 00 7F 00 01 00 00 26  00 7F 00 01 00 00 36 00
              7F 00 01 00 46 00 00 7F  00 10 01 00 07 00 00 7F
              00 01 00 17 00 00 7F 00  01 00 27 00 7F 00 00 01
              00 37 00 7F 00 00 01 00  47 00 7F 00 10 00 01 00
              3A 00 7F 00 01 00 00 3B  00 7F 00 01 00 00 2E 00
              7F 00 01 00 3C 00 00 7F  00 01 00 3D 00 00 7F 00
              01 00 3E 00 7F 00 00 01  00 2B 00 7F 00 00 01 00
              2C 00 7F 00 01 00 00 2A  00 7F 00 01 00 00 29 00
              7F 00 01 00 2D 00 00 7F  00 7F 7F 7F 7F 00 7F 00
              00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
              00 F7
F0 7E 7F 06 01 F7
F0 42 40 00 01 13 00 1F  11 00 F7"
