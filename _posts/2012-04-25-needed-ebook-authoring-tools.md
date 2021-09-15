---
title: "Needed: ebook authoring tools"
categories: ["Education", "Bibliomane"]

I've been writing a self-published [textbook](http://beta.saasbook.info/) that is sold in hardcopy, Kindle format, and an iOS app.  I firmly believe that ebooks are the future of textbooks, though unfortunately today's e-textbooks are inferior versions of their print counterparts.  To that end, my co-author Dave Patterson and I took many steps to make the ebook version the preferred version of our book---not by crippling the print version, but by exploiting ebook features that you can't do in print.

Our original vision was to make the richest version an iOS/Android version, in which we could use extensive CSS and JavaScript to make the book experience interactive in ways that the Kindle ebook format doesn't support.  We originally tried using PhoneGap for this work, but it wasn't stable because apparently it wasn't designed to deal with such large assets (hundreds of KB per HTML "page", plus many MB of images, plus GB of embedded screencast videos).  When Apple released iBooks Author, we realized we'd have to switch to that, since doing a "native" Android or iOS app was beyond our resources.  We ended up with much of what we wanted---better navigation both within and across chapters, embedded screencasts, and even interactive "check your understanding" question widgets that don't reveal the answer until you try to answer the question.  But it came at great cost and pain: as we describe below, iBooks Author doesn't import any useful markup format, even though it generates ePub.

Our experience with doing our own layout and publishing for the print and Kindle editions suggests that the majority of self-publishers and ebook authors may well want to work with a publisher.  The self-publishing process even even for simple hardcopy books is not trivial, but a process that can produce multiple formats with radically different output requirements from a single set of source files is definitely not for the faint of heart.  I described ina n earlier post how we generally did it for our book, concluding that  LaTeX is the worst way to prepare an ebook, except for all the others.

So what do we need?  A better unified authoring environment is a must.  What would my ideal authoring environment support?

-   Device-independent table specification: LaTeX's table support is painful, but the real problem is that the aesthetics of table layout vary greatly per-platform.  A better platform-independent way of specifying table layout constraints is needed.

-   Tie-in to online resources:  we used Pastebin for code examples and Vimeo for screencasts to augment the content.  The RESTful APIs of these services allow high automation in cross-referencing the content---for example, since we agreed to put each code excerpt into its own file, I made a script that posts each code excerpt to Pastebin, notes the Pastebin URI, and modifies the book source (.tex files) in place to include the link.  I did the same with screencasts.  This could be automated in an authoring environment.

-   It seems likely most ebooks will use an XML-based format of some kind; exporting ***and importing*** such a format is essential.  Please, please, please don't make me use a WYSIWYG editor.  When writing, I want to focus on the ***logical***structure of the book and arrange the input the way it makes sense to me.  LaTeX is great for this. In fact, modulo table support, LaTeX isn't a bad choice as a language, especially since it lets you use macros to define your own book elements, as we did with sidebars, chapter heads, sidebar graphics, pitfalls/fallacies, and soon.  (Though the way it interprets markup is highly user-unfriendly when an error occurs.)  It'd be great, of course, to have WYSIWYG*previewers* for the various output targets, and some people might even like a GUI front-end, but don't make that the only way to edit!

If you're thinking of self-publishing, be aware that you'll have to take care of a lot of "little" typographic things that the publisher usually does, including but not limited to: getting "straight quotes" and "smart quotes"' right; getting em-dashes and en-dashes rather than '---' and '--'; inserting © and ™ rather than typing '(C)' or '(tm)'; dealing with ligatures (TeX does this for you, but most word processors don't).  But the biggest one is going to be the hardest for Word users: getting accustomed to automating everything using macros so that changes are easy to make.  If you are used to manually styling your text (changing font size, applying indentation, etc.) rather than rigorously using styles, you're sunk before you start, and so is your publisher (well, they're not sunk; they'll just charge you a lot of money for doing a labor-intensive manual job).

Here's a list of our original "blue sky" desiderata for a software engineering ebook, and how we did on each one.

-   social networking for group annotations: not done, and we should wait to see how reader platforms' feature wars about this feature shake out.

-   Code should be "live" --- clicking it has effect of (eg) starting the app and dropping into a debugger on this function.  This is hard to do in general, since no current ebook platforms have the programmability to also act as a developer sandbox.  But our code snippets are all linked to Pastebin, allowing 1-click copy and paste into a terminal window or editor if you're reading the ebook on a computer, and can even be pasted into and run on an Amazon EC2 instance.

-   Markup for code examples should be obvious.  Both the PDF and ebook outputs treat code specially.  The ebook version links each excerpt to 1-click-copyable source code on Pastebin, which has nice  syntax highlighting.

-   Figures should be  animatable (short movies): we currently have no animated figures, but we do have several screencasts sprinkled throughout; they're hosted on Vimeo and ebook links are live, and in the iBooks Edition the content is bundled so they're just embedded directly in the book.

-   "Where am I" (Web-style nav indentation) along side column or bottom of page:  iBooks Author does a nice job of this; Kindle doesn't, even though we create the .ncx file that lists the names and location numbers of all the interesting "navigation points" in the book.

-   Margin notes (sidebars) in print  book are popups/hidden until tapped in ebook: Kindle format doesn't support this, at least not yet.

-   "Pinning" figures or popups so they don't go away while you flip  text underneath: Not done yet, but on the drawing board
