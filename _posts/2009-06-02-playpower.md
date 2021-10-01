---
title: "Can retrocomputing bring computer-aided learning to the other 90%?"
categories: ["Education","Gadgets"]
---


Not sure which of my colleagues (maybe [Matt](http://www.eecs.harvard.edu/~mdw/)?) pointed me at this, or maybe I read it in one of the various pheeds, but the guys at [PlayPower](http://www.playpower.org/) have observed that a self-contained Nintendo NES knockoff, packaged in a cheap keyboard and including NES-like game controllers, is sold in India, China and other countries as the "TV Computer" for around US $10! In fact since the NES patents expired a few years ago, these are now 100% legal, and many different manufacturers offer them. PlayPower's goal is to find a way to use these to bootstrap computer-aided education (basic computer literacy, learning games like the old Oregon Trail, etc.) in developing countries. Like the Atari 2600, there is a[ vibrant retrocomputing developer community](http://nesdev.parodius.com/) around the NES.

[![](http://playpower.org/assets/images/playpower-keyboard.gif "A US$12 NES/Famicom knockoff available in India")](http://picasaweb.google.co.in/dereklomas/TVComputer#)



PlayPower's booth at [Maker Faire](http://makerfaire.com/) had a couple of these devices on display. The NES, also called the Famicom in Asia, was a 6502-based cartridge game system whose technology was only half a generation or so ahead of the Atari 2600. The device plugs into a TV (they have both composite video out and RF out, and soldering an undocumented pad on the board switches between NTSC and PAL) and come with a starter cartridge that has various game titles on it, and even seems to have programs that "simulate" word processing and Web browsing (kind of like "my first cell phone" toys simulate making phone calls). Presumably, the carts have ROMs that take over part of the address space when plugged in; the more advanced Atari carts had some additional bank-switching logic (triggered by memory-mapped I/O) that allowed multiplexing lots of different game levels into a fixed amount of address space, typically around 4K.

Intriguingly, [Bob Brost at CMU taught a class on NES game development](http://bobrost.com/nes/) and even produced "nBasic", a BASIC-level (sort of) language that, although it eliminates the need to program in 6502 assembly, it does not seem to eliminate the need to understand the arcane programming approach required by these devices, i.e. you have to time your code around the vertical retrace interval (only "safe" to write GPU registers during vertical retrace to avoid flickering/loss of picture sync), etc.

So my questions would be: is this level of programming abstraction going to be sufficient to catalyze the development of a lot of "edu-ware" for these devices? Given that the source of this "edu-ware" is ultimately (we hope) going to be programmers in the very countries in which the devices are sold, should we be looking for something that enables a much higher level of abstraction for development---say, something more like [Scratch](http://scratch.mit.edu/)---and port a subset of it to this 8-bit world?

(Update: the [Design For Developing Countries wiki](http://design4dev.wetpaint.com/) has a lot of great information about their progress and preliminary studies.)

(For the curious, the NES has:

-   a 1.9MHz 8-bit 6502

-   32K ROM address space for game code & data (typically 16K code, 16K swappable to store different "levels" data)

-   240w x 248h viewable graphics (NTSC or PAL) organized as 8×8 pixel "tiles" for the purposes of color palette assignment, sprite rendering, etc.

-   system, background and foreground color palettes (64, 16 and 16 entries respectively)

-   up to 64 sprites (8×8 or 8×16 pixels, 3 colors + transparent color, no more than 8 sprites per scanline)

-   4 synthesizer channels (2 square waves, 1 triangle, 1 white noise) with ~6 octave range; one note per channel at a time

What are the hard problems? Distribution of software specifically, and communication in general, since the device has no comms built in; any storable user data, since the device has no persistent storage (though PowerPlay have mated a CF flash card to it). Now, since cell phones are so unbelievably common even among the poorest in India, even the cheapest ones can do simple text-only Internet browsing, and all come with some limited amount of nonvolatile storage (though I'm not sure it's programmer-addressable), might this be a good short project---mating inexpensive cell phones to $10 TV computers? Maybe something to do in time for the next Maker Faire...\
I have to admit, the pervasive availability of $10 TV-computers is awfully compelling, as someone who remembers very vividly what remarkable things can be done within the constraints of these old 6502 systems.
