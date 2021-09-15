---
title: "Learn programming by gamifying? How about by reading?"
categories: ['Tech history', 'Retro']
---

On impulse I spent a couple of dollars on Amazon Marketplace to buy the out-of-print book *Micro Adventure No. 1: Space Attack.*  It's a "second person thinker" adventure novella: like old-school interactive fiction (i.e. [text adventures](http://www.ifarchive.org/if-archive/starters/Beginner.txt)),  it's written in the second person, as in "Although you'd like to rest for a few minutes, Captain Garrety insists that you get to your feet..."

![](/assets/img/2017-03-19-learn-programming/51pqWKL8EZL.jpeg)

In this short story aimed at pre-teens---the first in a [series of at least 10](https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Dstripbooks&field-keywords=micro+adventure), dating from the early 1980s---you must defend a space station from alien attack. But the interesting bit is that eight [BASIC](https://en.wikipedia.org/wiki/BASIC) programs are embedded into the text of the story, as the page scan below shows.

The initial program just has to be typed in and run in order to reveal the "secret message" that will describe your mission to you. But as the book progresses, the programs require you to debug, analyze, or otherwise modify them as part of the story line. Some programs have bugs you must fix; in other cases you're asked to write a short program that automates a simple task, such as showing mappings between text characters and their ASCII codes (this is pre-Unicode, remember), in order to help "decode" intercepted enemy messages.

![](/assets/img/2017-03-19-learn-programming/micro_adventure_example.png)

Of course, failing to do the puzzles can't block your progress in the story, because nothing stops you from just turning the page to keep reading. But this strikes me as an interesting way to get kids to learn how simple programs work. (I don't know how effective it was.) There is a "reference manual" at the end of the book explaining how the programs work, giving hints on solving the puzzles, and, of course, indicating which modifications must be made to allow the programs to run on different microcomputers. (Whereas code in a modern scripting language like Python will behave the same on all platforms, BASIC "dialects" differed enough across different computers that almost any non-toy program required changes to work with other computers' BASIC interpreters.)

An entire generation of programmers was first introduced to computing via the BASIC language. I've been looking for an example of an old geometry or physics textbook containing "[Try it in BASIC](http://www.salon.com/2006/09/14/basic_2/)" examples (we didn't use any of those at my middle school), but this seems a lot more fun. While I'm pretty convinced today's kids don't read books anymore, perhaps this approach could be adapted into an interactive format in which you actually play an adventure game but have to solve programming-related puzzles to make actual game progress.
