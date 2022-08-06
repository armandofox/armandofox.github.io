---
title: "ACE Lab (Algorithms & Computing in Education)"
permalink: /research/ace-lab
type: page
sidebar:
  nav: "research"
layout: single
---

The [ACE Lab](https://acelab.berkeley.edu) (Algorithms and Computing
in Education) brings together faculty and students in computer
science, education, and information/learning sciences to explore the
many ways in which computing can support pedagogy.

There is some emphasis on STEM and CS in particular since we like to
deploy and evaluate our work in real classes, and Berkeley has some
quite large CS classes that make great testing environments, but we do
work in other areas of education as well.

My specific work within ACE tends to focus on support for teaching
upper-division software engineering techniques (think "CS100" rather
than "CS1").  

# Why focus on CS100 rather than CS1?

CS1 takes students from zero to some programming.  Berkeley CS61A
exposes them to all the major paradigms in programming, and introduces
important big ideas.  But that is not enough
for students who want to pursue software as a career, even with the
follow-on CS61B course, which teaches data structures and gives
students some experience with a moderately-sized software system.

Beyond that lies "CS100", generally the upper-division courses in
systems and software.

With respect to software specifically, major differences from the "CS1" 
include:

* In CS100, it's not enough for code to pass the instructor-provided
test cases: it must also be maintainable, displaying good use of
idioms in the target language and following best practices for using
the language's features.  The AutoStyle and Faded Parsons projects
described below address
these challenges.

* In fact, there often aren't instructor-provided test cases--learning
to write tests for one's own code is a main topic and one that
industry agrees is under-taught in CS curricula.  Our ongoing work on Test-Writing as a
Programming Pattern addresses this challenge.

* CS100-level apps can be very large--thousands of lines of code, with
substantial reliance on frameworks (for example, Rails for Web apps).
Understanding "what code goes where" in such systems---how to
decompose a programming task such as adding a new feature to a web
app, and understanding how the responsibilities are divided across the
avrious subsystems and how they communicate---is a daunting task when
someone is new to a framework.  Our ongoing work on Scaffolded Subgoal
Decomposition addresses this challenge.

* Finally, at all levels of CS instruction, proficiency-based or
mastery-based learning ("constant learning, variable time" rather than
"variable learning in constant time") has been shown to be as effective as a private
tutor in helping students meet learning goals.  A prerequisite for PBL
is the ability to generate enough exercises to give students as much
practice as they need.  Starting with the excellent (and open-source)
[PrairieLearn](prairielearn.org) exercise-authoring system developed
at the University of Illinois, we are creating a variety of novel
"CS100-level" exercise types for which parameterized question
generators can generate large numbers of variants, including problems
in database queries and schemas, regular expressions, refactoring, and
more.  (The research on Test-Writing as a Variably-Scaffolded
Programming Pattern effectively combines and extends the Faded Parsons
work with the Proficiency-based Learning work.)  This project is under
the aegis of the Berkeley [LEARNER Lab](learner.berkeley.edu), and
also has
positive repercussions for equity, resilience, and students with learning
disabilities. 


# Earlier work: AutoStyle


Inspired in part by my experience teaching Berkeley's first MOOC on
software engineering, 
the idea behind AutoStyle was that when many students
submit functionally-correct solutions to the same programming
problem, some students' code will be more concise, more elegant
(i.e. closer to what an expert would produce), and more revealing of design intent 
than that of other students.
Could we
automatically identify _what_ aspects of the "better" solutions made
them better, and synthesize hints to give to students who came up with
weaker solutions?

We built a tool called AutoStyle that did just this, by using existing
software engineering static-analysis tools to identify "better styled" code,
analyzing the
abstract syntax trees of correct submissions, and arranging them into
a tree whose root represents (one of the) "best" solutions.
We then find a "chain" of transformations from any given student's
solution to the root, and propose the required transformations as
hints to gradually refine the code.

ICSE/CSEET 2019 paper: One reason novices' code is worse is that if
they are unfamiliar with a certain pattern or idiom, they will find an
expert's well-consturcted solution less readable.
Thus, novices may have to be intentionally and repeatedly exposed to good patterns
(expert code) before they come to consider such code as more readable.
 
We did a [randomized
controlled trial](https://acelab.berkeley.edu/wp-content/uploads/2022/06/autostyle.pdf) in which   Students were asked to
continue to improve and resubmit their code until the style "score"
exceeded some threshold.
The control group was given only the "style
guidelines" written by the instructor, whereas the treatment group was
also given automated restructuring hints from AutoStyle.


Rohan Roy Choudhury, Hezheng Yin, and Armando Fox.  [Scale-Driven
Automatic Hint Generation for Coding
Style.](https://acelab.berkeley.edu/wp-content/uploads/2022/06/autostyle.pdf)
Proc. ITS 2016


# Recent work: Faded Parsons Problems--Reconstructing expert solutions to teach programming patterns


# Ongoing work: Teaching Test-Writing as a Variably-Scaffolded Programming Pattern


# Ongoing work: Scaffolded Subgoal Decomposition


# Ongoing work: Proficiency-Based Learning


The 
