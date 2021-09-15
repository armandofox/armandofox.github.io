---
title: "CS169 x 50,000 = ?"
categories: ["Education"]
---

**NOTE:** This is the concatenation of a few posts from early 2012 as
we were planning the launch of our first MOOC on Software as a Service
on Coursera and later edX.


Berkeley, like many schools, has departmentally-owned computer clusters so students can get temporary shell accounts for courses that have a software component or require the use of courseware.

Fine for the 108 students in [CS 169 this semester](http://www-inst.eecs.berkeley.edu/~cs169/sp12).  But how can we provide [over 50,000 students](http://saas-class.org/) the necessary software infrastructure (and our in-progress [textbook](http://saasbook.info/)) to participate in the class?

Simple answer---we don't.  The on-campus class has been relying more and more on existing commercial SaaS tools and less on Berkeley's own IT infrastructure, in part because we thought it was important for students to use the same services and tools they'd use if they were full-time developers.  The transition is now complete:

-   We provide a [VirtualBox](http://virtualbox.org/)-compatible VM image with all courseware (Ubuntu+ Ruby+ Rails+ gems+ ....) Thanks to[Maggie Johnson](http://sites.google.caom/site/facultysummit2010/speakers) for offering to have Google underwrite the nontrivial bandwidth charges for distributing a 1.5GB VM image to over 50,000 people [via Google AppEngine](http://saasbook.appspot.com/).

-   More than half the students signed up at [saas-class.org](http://saas-class.org/) are non-USA.  The [print version](http://createspace.com/3727664) of our book is beyond the reach of many of these, both because of shipping and because of its $20 price (low for a textbook, high for India).  Fortunately we had always planned on doing a Kindle edition anyway, which is [priced at $9.99](http://www.amazon.com/dp/B006WU5G4C) (for now), can be obtained instantaneously, and can be updated on demand (we're planning a new Kindle release just before the online course begins, and probably one more before the Beta Edition comes out in Fall 2012).

-   Every student will open a free [Heroku](http://heroku.com/) account for deploying their projects, so the autograders (and someday a Saucelabs-based grader, I hope) can check deployed code running on a public server.  Coursera apparently uses EC2 to run many instances of the autograder.

-   For code that doesn't get deployed, we're developing an autograder that runs rspec, reek, flay and flog, so students' code is evaluated for both correctness and good coding style.  The feedback may not be as deep as you'd get from an experienced TA looking over your shoulder, but the approach scales way better.

-   Every student opens a [Github](http://github.com/) account.  Since we need to protect homeworks against plagiarism, students need private repos for those.  The Github free account doesn't allow that, but we've been working with Github to offer a free time-limited Micro account to the online students (many of whom are not traditional full-time students and so don't qualify for Github's [free student micro plan](http://github.com/edu)).  Shout out to Chris Wanstrath and Kami Lott for making that happen!

Whew!  That's the list so far.  In another post I'll write up what we did in the textbook both to embrace the coming ebook tsunami and to make the book more interactive and connected to other online course materials, even if you get the dead-tree version.


### [Meaningful feedback on 50,000 programming assigments?](http://armandofox.blogspot.com/2012/01/meaningful-feedback-on-50000.html)

Previously I mentioned that we're offering the first five weeks of Berkeley's [CS169](http://www-inst.eecs.berkeley.edu/~cs169/sp12) course through the [Coursera](http://coursera.com/) education portal (the startup formed to commercialize Andrew Ng and Daphne Koller's online education system).

I had already been thinking of autograding technology even for the on-campus course, since enrollment has grown from a low of about 35 when I first took over the course to a high of 108 this semester, and we continue to have chronic TA shortages.  For 50,000+ students, there's no choice but to automate everything.

*Given the apprenticeship aspect of learning to write good code, can we really give automated feedback on programming assignments in a meaningful way, beyond just testing whether the code runs and computes the right answer?*

Coursera already had autograding for multiple-choice and short-answer (match a regexp) questions, but we wanted to be able to autograde programming assignments too.  To that end, Coursera created an API that allows an autograder to run arbitrary code to evaluate student homework submissions.  We've used that ability to create a tool that runs [RSpec](http://rspec.info/) in a sandbox, so that we can do an automatic but detailed evaluation of student code.  For example, if an assignment specifically calls for them to use map() rather than writing a loop to express an operation on a collection, RSpec allows writing fine-grained tests that would check this.

Our goal is to extend the tool to also run [reek](https://github.com/kevinrutherford/reek/wiki), which looks for code smells, [flog](http://ruby.sadi.st/Ruby_Sadist.html), which estimates cyclomatic complexity, and [flay](http://ruby.sadi.st/Ruby_Sadist.html), which looks for duplicated code across many , so that we can provide automated feedback on coding style and best practices as well as code correctness.  We also expect to hook up SimpleCov or cover_me to give students feedback on their code coverage.  We'll release this tool on Github as soon as it's been field-tested.

Since we teach BDD, I'm also looking for a way to automatically run integration tests against students' homeworks, which they deploy on [Heroku](http://heroku.com/).  So my next adventure is to get in touch with someone at Saucelabs and see what we can work out.

Anyone want to introduce me?


### [CS 169 x 50,000 == ?](http://armandofox.blogspot.com/2012/01/cs-169-x-50000.html)

Along with Dave Patterson and Koushik Sen, I'm teaching CS 169 Software Engineering at Berkeley this spring (Jan-May 2012).

As with previous times I've taught the class, students will learn fundamental SW engineering techniques in the context of using agile methods to develop SaaS using Rails.  (High buzzword quotient for that sentence.)  This is the fifth time we've done a SaaS-oriented class and the second time that the official CS 169 offering has been taught this way, and we've been happy with the results.

But some major things are new this time around.  First, Dave and I are writing a [textbook](http://saasbook.info/) that we hope will allow others to teach this course.  The alpha edition, which is missing some chapters, is available now in print and Kindle formats (I'll blog later about our experience self-publishing it).  Writing the book has also helped better organize the lecture material.

Second, Github and Google join the list of companies who are being super-cool in connecting the students in the course with great services/products at their own expense, and/or providing great guest speakers to come talk about life in the real SW world.  (Current list already included Pivotal Labs and Heroku.)

Third and scariest, [Andrew Ng at Stanford](http://www.cs.stanford.edu/~ang) persudaded us to offer the first 5 weeks of the course using the online-learning infrastructure he and Daphne Koller pioneered last year.  Anyone can sign up for free at [saas-class.org](http://saas-class.org/) ---and so far over ***53,000*** people have!  Holy s**t.  Even with 90% attrition, 5,300 people would be more than I've cumulatively taught in my whole life.

Basically, we've refactored our 70-minute on-campus lectures into 6-7 ten-minute chunks each, which Andrew recommended as a near-optimal quantum.  In their system, each video chunk is supposed to include one or two self-assessment questions (multiple choice) that the student must answer correctly before proceeding, kind of like when you go to traffic school online to get a ticket wiped from your record.  I had already been getting good results using [peer instruction](http://mazur.harvard.edu/research/detailspage.php?rowid=8) sporadically in lecture, so we just systematized it to include a peer instruction question at the end of every chunk of lecture material; these same questions become the in-video self-assessment questions.

At this scale, everything has to be optimized for automatic grading and evaluation.  (Although the on-campus enrollment for CS 169 right now is 108, which is about triple its typical size, so I had already been thinking about auto-grading and design-for-gradability even before the online course happened.)  I'll write more about that shortly.  But meanwhile, if you're off-campus and interested, go ahead and sign up---hey, what's one more?
