ZM31 TandyMod+ ROM Version
==========================

This repo contains everything needed to perform [Alan Hightower's TandyMod+](https://www.retrotronics.org/svn/jride/trunk/tandymod/) using more commonly programmable ROMs rather than GAL chips. If you have a GAL programmer, his board is much more compact (it's SMT) and less likely to run into issues due to ROMs being slow/degraded.

The general concept is that rather than implement this simple logic on a GAL chip or several traditional logic chips, I'm implementing this 8-input logic function using a ROM. Think about the address select lines as logic inputs and the data output lines as logic outputs. If this were working as an 8-way OR gate with two outputs, then address 0 (all address lines low) would have the value 0b00, and all of the 255 other possible addresses would have the value 0b11. 256-bit modern-ish ROMs, however, are uncommon. So how do we handle larger ROMs? If you repeat these 256 values over and over again until you hit the end of the ROM, then A8 and greater can be either 0 or 1 and the logic table still works. This works out very nicely because some ROMs have their +5V input as the last pin, and on bigger ROMs, that pin is an address pin. [This is a handy table of how the pins match up between the different sized chips](http://www.z80.info/gfx/eprom.gif).

What the Mod Does
-----------------

It's well known that the Tandy 1000 is a clone of the IBM PCjr. While cloning the PCjr, Tandy fixed a number of silly bugs that IBM left in (probably to make the PCjr incompatible with the IBM PC). One of those bugs is how the video memory is used. I don't completely understand the bug, so this explanation may be a bit inaccurate, but when in 320x200 16-color mode, you can only access the first 16KB of video memory at BC000 (B8000 is just a repeat of BC000) even though there is at least 32KB of video memory. There is some other way to access the other half of the 32KB video memory, which PCjr applications have to use, but this makes programming much more difficult. On the Tandy 1000, BC000 to BFFFF is accessible as a contiguous 32KB chunk. This mod fixes this. The end result is that Tandy 1000 applications that normally have a Venetian blinds defect (black bars every inch or so) will now display correctly. There are only a handful of PCjr applications which don't work with this mod enabled, which is why there is a toggle jumper.

Performing the Mod
------------------

1. Check that you have the parts you need. You will need the mod board, a 2.54mm jumper, 2.54mm header pins, a programmed ROM, a low-profile small DIP16 socket, and a low-profile DIP28 socket.
2. Test that Turbo Outrun starts with Venetian blinds in Tandy 16-color mode.
3. Build the board.
4. Desolder ZM31, a 74LS157 under the floppy drive. Locate the chip by referencing [page B-19 of the PCjr technical reference](https://archive.org/details/bitsavers_ibmpcpcjrPceNov83_24513363/page/n515).
5. Install the low-profile DIP16 socket in place of the 74LS157. Install the 74LS157 in this socket.
6. Test that Turbo Outrun still starts with Venetian blinds in Tandy 16-color mode.
7. Remove the 74LS157 again, and insert the mod board.
8. Set the jumper to Tandy Mode On.
9. Test that Turbo Outrun starts _without_ Venetian blinds in Tandy 16-color mode.
10. Set the jumper to Tandy Mode Off.
11. Test that Turbo Outrun starts _with_ Venetian blinds in Tandy 16-color mode.
12. Put the jumper back to Tandy Mode On.

Errata
------

None at the moment.
