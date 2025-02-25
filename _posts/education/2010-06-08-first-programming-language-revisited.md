---
title: "A good first programming language, revisited"
categories: ["Retro", "Tech history"]
---

I'm of the "BASIC generation" and [like David Brin](http://www.salon.com/technology/feature/2006/09/14/basic) I bellyache about there not being a good first language for kids to feel the empowerment I felt each time I could say "Look, I made the computer do something cool!"

A colleague recently asked if I had any thoughts on what would be "a good first programming language" for a precocious 9-year-old who was very  much into computers and wanted to learn programming, giving me an excuse to agonize about this again.

The executive summary of my current opinion is probably "Scratch if you want training wheels, Python otherwise", but if this sort of thing interests you, read on.

My colleague's question gave me an excuse to wring my hands about it some more, and even talk to some other people about it seriously, including [Colleen Lewis](http://www.cs.berkeley.edu/~colleenl/), a Berkeley computer scientist and educator whose opinion I respect tremendously on such matters, and a bunch of smart colleagues from industry who attended the recent [RAD Lab](http://radlab.cs.berkeley.edu/) retreat.

We concluded that there's a handful of absolutely fundamental concepts that are (a) common to the vast majority of programming paradigms/languages and (b) not "natural" in the sense that they have no obvious analog in non-programming-based activities and simply have to be internalized:

-   variables and assignment

-   manipulating collections of elements (arrays exist even in languages that don't support user-defined data structures)

-   conditional evaluation

-   control flow

-   iteration

-   subprograms (i.e., procedural abstraction)

(I've deliberately omitted OO; while really important, it's not fundamental in that there's lots of programs you can write without it.)

Beyond focusing on absorbing those concepts, a "good first language" should make the young programmer feel empowered at being able to do stuff, gradually stripping away the "mystique" of how computers do the cool things they do.

Hence my concerns about [Scratch](http://scratch.mit.edu/), a popular GUI-based programming environment designed for teaching that we are starting to use at Berkeley for the intro-level CS class.  Colleen reassured me that it's possible to write non-toy programs in Scratch once you ditch the GUI, that it supports constructs like lambda expressions that let you teach important concepts like closures, and that students who complete the new intro course also understand things like objects and class inheritance and are more than ready to tackle any programming language.  My concern is that the Scratch GUI environment is so amazingly rich and polished that it might diminish the sense of empowerment---even if you write a cool program, there's still just too much magic between your program and the machine.  The nice thing about Scratch is that it's widely used in education so (I assume) there's lots of freely-available supplementary materials to go with the software.  (Wearing my "productivity programming" hat, I'd say Scratch is almost too productive because so much is happening beyond the code you wrote.)

The alternative seems to be Python, probably the closest thing to BASIC these days (albeit a much better language, of course).  And in fact I found a pretty good book---*[Hello World: Computer Programming for Kids and Other Beginners](http://www.worldcat.org/title/hello-world-computer-programming-for-kids-and-other-beginners/oclc/502443471&referer=brief_results)*---co-authored by a programmer and his young son and written in a kid-friendly yet noncondescending way.  The downside is that while Python is a pretty nice language, like all languages it has a few quirky notations, idiosyncrasies, arbitrary-seeming behaviors, etc. While the book goes out of its way to clarify these only as much as needed, their presence might detract from a learning experience...but then, to be fair, the same was true of BASIC way back when, and probably those of us who glamorize learning it have selective amnesia about getting bitten by those idiosyncrasies and learning to work around them.

So maybe my current recommendation is: for a gentle introduction with training wheels and rubber bumpers, Scratch; for something a little more hardcore that you won't outgrow (Python is used for lots of real programs) but comes complete with real-life idiosyncracies, Python with the above book.

The good news is that while neither is "built in" to today's PCs like BASIC used to be, they're both open source free downloads.

Ideas from anyone who's actually helped their kids learn to program?  (I have no kids, only a toucan, and it's unlikely she'll learn to program anytime soon.)
