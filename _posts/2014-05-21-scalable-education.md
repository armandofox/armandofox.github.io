---
title: "Separating scalable and non-scalable elements in CS education"
categories: ["Computing and society", "Education"]
---


UW CS chair Ed Lazowska [makes the case
nicely](http://news.cs.washington.edu/2014/05/19/responding-to-the-explosion-of-student-interest-in-computer-science/) that
interest in CS is booming, and that it's not likely to be just a flash
in the pan, and how are we going to meet this demand and deal with
larger course sizes?

In terms of offering a high-quality course experience to ever-larger
numbers of students, my view (doubtless shared by others) is that we
cannot just do the same thing we've been doing but more of it; we need
to find new ways to do things.  Neither can we plop the students in
front of a MOOC with minimal instructor guidance, though clearly those
technologies have a role to play.

In the interest of trying to figure some of this out, I tried
collecting some thoughts about this based on the Berkeley
experience.  I presented this as a position at the recent Dagstuhl
seminar about MOOCs, but I'm also on an internal committee in Berkeley
CS charged with figuring out how to expand access to CS curriculum
while keeping high quality, so these thoughts are percolating there as
well.  Comments welcome.

Separating Scalable from Non-Scalable Elements to Refactor Residential Course Delivery
--------------------------------------------------------------------------------------

In Fall 2013, enrollment in UC Berkeley's introductory CS course
exceeded 1,000 for the first time, reflecting a trend in top CS
departments for exploding demand for CS.

Most residential courses are
offered in a "one size fits all" model: a single lecture, a single set
of assignments or labs that everyone does, multiple recitation
sections that generally cover the same material as one another, a lab
session where everyone works on the same lab with TA's on hand to
help, and perhaps small-group tutoring sessions or office hours as the
only place where students with differing needs get more customized
attention.  The assumption is that this combination of elements serves
the "mass of the distribution" of students, stragglers can squeak by
with the additional support of office hours or tutoring, and
superstars can use their spare time to do undergraduate research.

Yet as enrollments grow, we observe that (a) not all aspects of
offering the course scale equally well in terms of instructor
resources, and (b) the "outliers" (superstars and stragglers) become
more and more pronounced, with the former representing underutilized
talent and the latter an  inordinate drain on instructional staff
time.

I argue that MOOC technology, in the format of a SPOC (Small Private
Online Course), can provide the leverage needed to refactor course
resources to improve how we serve these exploding populations by
separating the "scalable" from "non-scalable" elements of the course
and by carefully thinking about the role MOOCs can play in each part.

Things that scale well 
----------------------

Certain MOOCs have demonstrated that some elements of a course scale
inexpensively and well:

*  Sophisticated automatic grading, such as used in many CS MOOCs,
    allow nontrivial assignments to be automatically graded nearly
    instantly (vs. handed back a week later) and with finer-grained
    feedback than TA's or readers could provide.

*   In some domains, automatic problem generation builds on
    autograding to support mastery learning.  Both autograding and
    problem generation can take advantage of inexpensive public cloud
    computing rather than requiring extensive on-campus
    infrastructure.

*   Free video distribution (YouTube) makes lectures cheap to
    distribute.

*   Well-structured Q&A forums such as StackOverflow or Piazza allow
    students to help each other, with occasional intervention from
    teaching staff.

Things that scale poorly, and how to address them
-------------------------------------------------

More obvious variance across student cohorts.  Especially for courses
with "broad but shallow" prerequisites, students' levels of
preparation may vary, and during the course, different cohorts of
students may need help with different topics.   Mitigation:
"Just-in-time" flexible deployment of teaching staff.

High-end outliers (superstars): Superstar students are often an
underused resource.  As well, an instructor whose efforts are all
expended on simply managing a large course is unable to identify these
superstars (and sometimes they're not obvious) and cultivate them
further (invite as research assistants, etc.)

Mitigation: Identify ways to formally recognize and train these
students to be effective in helping their peers.

Low-end outliers (stragglers): Stragglers can take a disproportionate
amount of staff time, leading to an Amdahl's Law-like effect limiting
course scaling.  Mitigation: combine JIT deployment of teaching staff
with SPOC resources that enable mastery learning.

Learning activities that are interaction-intensive: Especially in
engineering courses, most real synthesis learning occurs in design
projects, but these are grading-intensive and
interaction-intensive.  Mitigation: Refactor the course into multiple
courses, each of which concentrates either on "high scale" or "high
touch" but not both, and resource the courses differently.

The main argument is that we must examine both creating new staff
roles and amplifying the productivity and leverage of those roles
using MOOC technology, thereby increasing overall teaching
productivity.

Rethinking Teaching Staff: New Roles & Flexible Deployment
----------------------------------------------------------

New teaching roles are already being created, but ad hoc/post hoc.  We
need to formalize these roles, resource them, and train them.  One
possible factoring of roles (with some overlap among them, e.g. some
community stewards may also be contributors) might be as follows:

*   Authors/Creators make an initial set of editorial decisions that
result in a narrative through a body of material,  analogous to
textbook authors.  We have argued that the combination of SPOCs
and e-books is a promising formula for packaging such content.

* Core Contributors create additional material such as assignments,
assessments, tutorials and other scaffolding  within the
author-provided framework, which may be used and adapted by many
instructors downstream.   They might, for example, participate in
direct teaching during the school year and spend the summer doing
course development or analyzing the previous semester's learning
outcomes data.  The SPOC delivery model and the software supporting it
make it more convenient than ever to use SPOCs for "curricular
technology transfer."

*   Community Stewards become experts on the materials and help other
instructors (including TA's and other teaching staff) work effectively
with the much larger range of materials available in a SPOC (compared
to traditional textbooks).

*    Course Managers  keep courses running  smoothly by keeping tabs
on student cohorts to understand who's having difficulty where,
marshalling and deploying instructional staff to respond to those
needs, responding to escalations from instructional staff, and so
on.  The course manager must have domain expertise comparable to a
very strong student, and may also be responsible for handling
violations of academic integrity in the course.

*    Discussion Leaders facilitate small-group discussions (analogous
to today's recitation sections) using a combination of their own and
provided materials.

*    Tutors work with small groups of students on specific material
with which they need help.

*    Students/learners also help each other in person (e.g. "guerrilla
lab sections" ) and virtually (e.g. discussion forums, hangouts).

These new positions will have to be recognized and trained.

**Recognition:**  Residential campuses currently recognize relatively
few "official" teaching roles, such as lecturer, TA/head TA, lab
TA/lab assistant, reader/grader.  New roles should be recognized with
a combination of academic credit and stipends.  For example, graduate
TA's receive a stipend and tuition waiver, but are also required to
complete certain teaching activities as part of their PhD
preparation.  At some schools, undergraduates can also be either
regular or lab TA's.  At Berkeley, a third mechanism allows
undergraduates to receive credit for "Teaching in EECS" even if they
can only commit 2-4 hours a week (vs. the 10 hour minimum for regular
TA's.)

**Training (teaching skills):** Many campuses' current orientations
and courses for teaching assistants focus on training "full" TA's who
will teach sections, create materials, grade assessments, conduct
review sessions, and more.  These courses therefore cover more than is
necessary for some of the other roles.  For example, "dealing with
disruptive students in class" is not a topic that (e.g.) tutors would
need much experience with.  Some basic training for
less-than-full-TA's might cover:

*  how to help students stuck on problems without giving away the
answer

* how to "coach" students to effectively use techniques such as pair
programming or peer grading, both to evaluate each others' work and
learn from the process of doing so,

**Training (Orientation to the material):** Both Code.org  and the NSF
CS10K project aim to train high school teachers to deliver computer
science courses.  Not only will the courses themselves be delivered as
SPOCs, but they are creating "teacher training SPOCs" that will be
combined with live and remote interaction (Google Hangouts) to train
instructors on the use of materials.

## Example 1: UC Berkeley/edX CS169x, Software Engineering

This MOOC was developed based on a campus course whose enrollment had
also been growing, and it features many of the elements that "scale
well," including rigorous but automatically graded programming
assignments.  Over 100,000 MOOC students have attempted the course and
over 10,000 have earned certificates over five offerings of it.  The
course now has a facilitator who is a faculty member at another
university who became excited about the material after taking the
course as a MOOC student.  He marshals the volunteer community TA's
drawn from alumni of previous offerings, but is also a contributor who
has created his own materials.  He also stewards a community of
classroom instructors using the material in their classrooms in a SPOC
model.  A SPOC is a Small Private Online Course usually based on MOOC
materials, but with heavy involvement of the instructor "on the
ground" in customizing and facilitating the course.  I have argued
elsewhere for the potential of this model and reported on successful
initial trials using Berkeley MOOC materials in a SPOC setting at half
a dozen universities, finding that different instructors use different
subsets of the resources, some add their own, and some either don't
use our videos  or use them to increase their own understanding of the
material before presenting to their own students.  In the meantime,
the course's original authors continue to improve the foundational
materials and textbook, relying on the "network" of support to
efficiently disseminate those changes and create new materials around
them.

Example 2: UC Berkeley CS61A, Great Ideas in Software Development
-----------------------------------------------------------------

This campus-based course, which has no corresponding MOOC as of this
writing, is a rigorous introduction to the main paradigms of
programming---procedural abstraction, data abstraction, functional,
and logic.  It is based on a transliteration into Python of Abelson &
Sussman's renowned Structure & Interpretation of Computer
Programs.  For the record-breaking 1100-student offering of the course
in Fall 2013, the lecturer  would huddle with TA's on a weekly basis
to understand which topics students were having trouble with, and
would then deploy a subset of teaching staff to create and run
"guerrilla sections" specifically covering difficult topics.  Combined
with making his lectures available online in advance of the live
lecture, this meant that most students don't attend lecture and most
students don't attend the same sections.  He also recruited star
alumni from the previous semester to serve as tutors or lab assistants
who committed only 2-4 hours per week in exchange for academic credit
designated as "Teaching in EECS", a teaching role that most CS courses
have yet to exploit.  These helpers knew the material since they were
alumni of the course, but received informal training on how to address
common questions on homeworks/lab exercises without giving away the
answers.

Summary 
-------

*  The current "one size fits all" model of residential course
delivery is a poor fit for exploding enrollments as well as for
faculty productivity in an era of tightening budgets.

*    Separating the scalable from the non-scalable parts of a course
allows the two to be resourced separately.  The scalable parts can
serve the mass of the distribution while the non-scalable parts can be
resourced in a way more tailored to utilizing the outliers, both the
superstars and the stragglers.

MOOC technology in the form of curated SPOCs, with appropriate new
teaching roles supporting the course, can play a role in both the
scalable and non-scalable elements.

## Acknowledgments 

These ideas come from conversations
with the UC Berkeley Taskforce on Computer Science Curriculum
(CS-TFOC), which includes David Culler, Dan Garcia, Björn Hartmann,
David Wagner; John DeNero, Dave Patterson, and Andrew Huang
(Berkeley); Mehran Sahami (Stanford); Saman Amarasinghe (MIT); Sam
Joseph (Hawaii Pacific University, and lead facilitator for CS 169x on
edX); and many others.
