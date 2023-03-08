---
title: "The original, original Adventure urtext has been found!"
categories: ["Retro", "Tech history"]
---

I am just barely old enough to be familiar with the original
ADVENTURE.

The [source code to the ORIGINAL
version](http://jerz.setonhill.edu/if/crowther/) has been found! not
the Don Woods enhanced version, which looms large in hacker lore and
whose source can be
found [here](http://www.rickadams.org/adventure/e_downloads.html) and
which was the basis of early text-based adventures like Zork on the
Apple II, but the earlier version (1975-76) that Will Crowther wrote
based on the real-life Colossal Cave in Kentucky. There's a
corresponding [scholarly article in a humanities
journal](http://brain.lis.uiuc.edu:2323/opencms/export/sites/default/dhq/vol/001/2/000009.html) (possibly
it has
moved [here](http://brain.lis.uiuc.edu:2323/opencms/export/sites/default/dhq/vol/001/2/000009.html))
about the source code.

The source code was found in an archived copy of Crowther's account at
stanford AI lab about a year ago.

It is neat to peruse. it's in Fortran IV, the total source code is 13K
with an additional 19K file of text data (game messages, numbers
describing the connectivity graph of the areas in the game, etc.) I
couldn't get it to compile using g77, i assume because of syntactic
differences between Fortran 77 and Fortran IV.

It's our heritage as hackers! I think of it as the equivalent of
trying to read Chaucer in the original (which, by the way, is another
fascinating exercise i recommend if you haven't tried it).

UPDATE: Someone has [ported the
code](http://www.russotto.net/~russotto/ADVENT/) to compile under g77!
