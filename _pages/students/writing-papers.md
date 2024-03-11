---
title: "Writing Good Papers"
permalink: /students/writing-papers
type: page
sidebar:
  nav: "students"
layout: single
---

Some other good sources besides the hints I've collected below:

-   Prof. John Ousterhout's Hints for Reviewing Papers
-   [How and How Not to Write a Good Systems Paper](http://ftp.digital.com/pub/DEC/SRC/other/SOSPadvice.txt), by SOSP-9 chairs Roy Levin and Dave Redell
-   [How to write a good OOPSLA paper](http://www.acm.org/sigplan/oopsla/oopsla96/how91.html).  The comments apply equally well to other conferences, IMHO.
-   Related: Prof. Dave Patterson's How to Have a Bad Career In Research/Academia
-   General pitfalls of early-career grad students, and how to avoid them


***Before writing your first paper, [read a lot of papers](http://www.armandofox.com/for-students/reading-papers) in the same area/conference/etc. (and/or ask your advisor for recommended papers) to get a sense of how a good paper reads. You can't write a good paper if you can't recognize one when you see it.***

# Before You Write...

***Writing is much harder than you think***. Advice: If you don't have a solid draft 1-2 weeks before the conference deadline, you're starting with 2 strikes. 


***Remember who will be (you hope) reading the paper. ***Research advisors can bring their experience to bear and give you advice (hence "advisor") on how to maximize the likelihood of getting a paper accepted and read, but don't mislead yourself into thinking that your goal should be to please your advisor.  If the community is pleased with your work, as represented by the (usually anonymous) reviewers who will be evaluating your paper, your advisor will be too.  Advice: Get lots of feedback on a paper from people other than your advisor---i.e., people representative of the reviewers who'll evaluate it---before submitting it.

***80% or more of submitted papers are rejected***. Advice: You need feedback from colleagues and outsiders to improve your paper. A poor way to get feedback is to submit the paper, wait 3-6 months, and get a rejection with cryptic reviews. A better way is left as an exercise to the reader. (Thanks to Mike Franklin for this particular way of looking at the "get feedback" issue.) The reviewer has 20 other papers waiting to be reviewed and is looking for a reason to set yours aside and move on. Advice: your job is to ensure no such opening is provided---whether by unsupported statements, poor writing, rambling style, etc.

***When you write up your work, remember that nobody cares what you did but only why it advances the state of the art. ***Advice: edit an outline and paragraph map before you start writing. It's much easier to rearrange/eliminate at this level than at the prose level.

***What kind of paper are you writing? ******Vision Papers*** describe your grand scheme of the world and why it is good. You need some data to back up your statements, but this is not a detailed measurements paper. The goal of this paper is to convince the reader that your scheme is interesting, different, better than other schemes that have addressed similar problems, raises legitimate research questions, and is therefore worth spending the time to pursue research on.

Make no statement that cannot be backed up by citation, quantitative data, or at least a very good first-cut experiment ("preliminary results suggest....") An ***implementation paper***, by contrast, gives detailed measurements of a system that was perhaps described in a previous vision paper. The goal here is to demonstrate what you learned from actually building the system: Did it validate your research hypothesis? What came out differently than you expected, and why? How much better, quantitatively, is your design than others'? If you're writing a measurement-and-results paper, first determine which graphs will convey the results you think are important. Given those, the paper will practically write itself.


**If possible, present your work in a short 5-10 minute talk.** This helps identify strengths and weaknesses and will give you an idea of what other people see as the important contributions. Surprisingly often, they will spot a significant contribution that you totally overlooked, or suggest a novel application of your ideas that dramatically increases the relevance and impact of your paper. You can structure your talk just as you would [when presenting someone else's paper](http://www.armandofox.com/for-students/reading-papers) for discussion.

**Don't cram.**  Recall the old saw about how nine pregnant women cannot produce a baby in one month.  You can't throw all your time into a paper at the last minute and expect a good result: you will become saturated, lose perspective because you are too close to the material, and ultimately be spinning your wheels, changing stuff back and forth without a really good feeling for why you're doing it.  Exceptions to this occur, but they're rare.

**Know when to say when.**  Even if you have written the paper with plenty of time and had a lot of outside review, after a certain point you will not be able to add much value without taking a break for a while (maybe a week or two).  When that point comes, further work on the paper is just thrashing and not likely to improve it much, though it will leave you feeling dissatisfied.

# Actually Writing: Abstract or Extended Abstract

An extended abstract is a 1-2 exposition of an idea summarizing the
contribution, previewing some results, etc.  Here are some good hints
from Bjoern Hartmann on what a good abstract should communicate:

* What’s the INSIGHT of your solution (system, method, design, …)?
(Why do you expect this to work while previous work failed?) 

* Can you provide an intuition of your solution that is not too technical?

* Does the EVIDENCE you present (end) match the CLAIMS/PROBLEM?  (Do
the metrics, study design, and baseline align?)

* Do you talk enough about your RESULTS?  (Just one sentence or many? What has been achieved and learned?
What is still missing / needs to be studied, i.e. Limitations?)

* Do you signal the CONTRIBUTION TYPE of your paper? (case study? new
research idea? experience report? tool/artifact? etc.)


# Actually Writing: Full Paper


***Write from an outline***. Let me say that again, because it's really important: write from an outline. I know no one who can reel off any coherent technical writing more than one page long without some kind of top-down strategy. At least sketch out the major sections of the paper, and what points you want to make in each, from 10000 feet. If you write any complete sentences during this phase, you're getting mired in detail already. Bullets are what you want.

Don't even try to write the title or abstract until after the whole rest of the paper is written. Then, and only then, will you actually know what the hell it is you want to say.

Unless you're writing a PhD thesis, your paper will make only a small number of discrete points--say 2 to 4. Each important point should appear 3 times: once in the abstract/introduction, once in the body of the paper (where it is explained in detail), and once in the conclusions (where you derive some implications of this point for the future of systems research, or whatever).  Bulleted conclusions can help. Remember that conference referees are at least as busy as you and they have to read several of these. Make sure they remember yours.

***Paragraph map. ***For each subsection, write no more than two lines describing the purpose/goal of that subsection. This text will NOT be part of the paper -- it is only there to remind you what you are trying to accomplish. It is ESSENTIAL that you be able to capture the purpose of a subsection in one or two lines. If you cannot do this, then you probably don't understand what the subsection is really about, and when you try to write the text, it will be jumbled.

Then, for each subsection, map out specific paragraphs: for each paragraph, write one sentence that explains the topic or main goal of just that paragraph. Again, this sentence probably will NOT make it into the actual text. It's important to keep it to one sentence. (As every style manual will tell you, including Strunk & White, virtually every well-formed paragraph does indeed have one sentence that explains the point of the paragraph, with the other sentences supporting or expanding on the point of the topic sentence.)  If you cannot fit the point of the paragraph into 1 sentence, the paragraph is probably making >1 point, so should be split into multiple paragraphs.

Read through everything you have written and see if it has a logical flow, ie if you believe it represents your work adequately.

Give what you have written to a technical colleague completely unfamiliar with your work (but able to understand the computer science part), have them read it, then have them tell you (without looking at it) what s/he thinks the main point and contributions are.

If all goes well, now replace the topic sentences with complete paragraphs.This way of writing will not yield a shakespearean work of literature, but it is consistent and will result in readable, logically organized prose by construction.

***The correct order of ideas is the order that makes top-down sense to the reader, which is usually not the order in which you did the work.***

Poor organization: 

-   First we did this
-   Then we did this
-   Then we ran into this problem
-   So instead we did this

Good organization for an introduction

-   Very high level statement of the general problem: anyone with a CS background should understand
-   High level but more specific statement of the subproblem: anyone working in this general area of CS should understand
-   Specific contribution(s): people who know the literature in this subarea well should understand
-   Section 2 reviews related work. Section 3 gives any specific background needed to understand our work, and describes problem setup/experimental setup/tools/whatever. Section 4 presents results. We then discuss implications of our results for (practitioners, researchers, future work, etc.) as well as potential limitations/threats to the validity of our work.

*Related work is very important. *A good Related Work section assures the reader/reviewer that you know your area, and your paper's claimed good idea/contribution/etc. is well informed. You absolutely *don't *want to give the impression that you had a good idea and decided to write it up *without *an understanding of who else had had similar ideas and done similar work. It's not enough to simply mention a related work citation; you need to say explicitly how it's related. "[Authors] did [X]; we build on/extend/contradict/improve/etc. on their idea by [Y]." Also, remember that if you find a particularly relevant related work, *its *related work section may point you to other valuable related work.

*Author list.  *Getting the author list right is important because most advisors have some "social contract" about what authorship entails (vs. being mentioned in the Acknowledgments). Be sure you understand this "contract" and come up with an author list early, so everyone on that list understands clearly what is expected of them. People who contributed to making the work possible but don't reach the threshold of being on the author list can be mentioned in a short Acknowledgments section right before the references (but this section usually needs to be omitted for anonymous review anyway).

*Don't use informal language. *Avoid contractions: write "We are" not "We're." Avoid nonspecific words: "we feel...", "we believe...", etc. If you feel something, no one cares. If you believe something, cite the evidence supporting your belief. Avoid idioms: your work *builds on *others' work, rather than *builds off* their work. Use a grammar/idiom checker such as Word's (it's one of the few good features of that program not yet matched by Google Docs).

*Look at the structure (headings) again. *A section that has exactly one subsection is structurally broken. A section that has no subsections may be OK, but if it's longer than about a page, you should ask whether it would be clearer if sectioned by subtopic.

# Revising/Editing


Your section organization will change. Sometimes it will be shuffled dramatically. This is fine; it means you're understanding what presentation order works best. If you don't go through at least three or four major revisions (where you move around or chop entire sections), it's probably lousy.

After doing some edits on each draft, give it a full top-to-bottom reading to evaluate its coherence and flow of ideas. Then, take a couple of hours and do something else; once you get close enough to your paper, you start missing the forest for the trees.

Even early drafts are valuable for getting your colleagues' comments. Get comments from people who you think may be skeptical of your approach. Get comments from people who will really rip your writing style apart. Remember, at least they are your friends; the conference referees probably are not.

Cite, cite, cite! Ask your colleagues for suggestions and pointers. You never want to be asked: "What about the work done by xxx, which obviously has something in common with your own?" (or worse: "...which refutes your own?") Give due credit to those whose efforts you build on, as well as pointing out how your approach is different from (and better than) previous ones.

Don't artificially formalize your writing style. Technical writing must be clear and concise. Overblown writing rarely fools anyone and it makes the paper boring to read.

-   Bad: "Problem X is clearly a critical area that impacts our research agenda and hypothesis.  Our ideas about problem X are embryonic and still evolving, and doubtless our ongoing work in this area will quickly yield fruitful results."
-   Better: "We recognize that problem X is central to our agenda, but we have only begun to investigate it."

If you haven't read Strunk and White's ***[The Elements of Style](https://www.amazon.com/Elements-Style-Fourth-William-Strunk/dp/020530902X)***, read it now. If you have, read it again. If you can't organize a paragraph, you won't have much luck organizing a chapter.

Omit needless words. Don't be surprised if this turns out to be 30-40% of the words you originally wrote. Your first effort rarely captures the most vigorous or concise way to say something. Spend time tersifying.

Run your paper by someone who is anal retentive about grammar to catch common errors: misuse of *which* and *that*, non-words and non-phrases such as *for all intensive purposes* or *irregardless*, lack of parallel sentence structure...

# Graphs


A graph is there to tell a story. The story should be evident from looking at the graph, and you can apply several visual tests to the graph to see if this is the case:

-   Can you pick one point on the graph and explain what it means?
-   Are the axis labels precise? 
-   Are the axis tick marks consistent with the axis labels? For example, if an axis label is "number of samples", the axis ticks should all be whole numbers.
-   Don't connect points on a graph with lines unless the goal is to show a trend.
-   "Up and to the right should be good"---order your data, axes, etc. according to this heuristic unless there's another ordering that's more compelling (e.g. in a time series you should of course order by time)
-   What would a "perfect" graph look like? E.g., if you're reporting on a research hypothesis, if your hypothesis turned out to be true 100% of the time, what graph would you see?

# Tools for writing: Antipatterns


**My opinion: **In the 1970s and 1980s, computer-based typesetting and typography made enormous progress, arguably culminating with the appearance of TeX in the early 1980s. When Microsoft Word for Mac and Windows appeared, it reversed much of that progress. Its typography is horrendous, cross-references are not particularly graceful to handle, different versions of the paper cannot be meaningfully compared since the file is binary, and collaborative editing is difficult since simultaneous changes cannot be merged. The rest of this section therefore assumes you are using LaTeX, either via Overleaf or using good old text files.

**Break up the paper into sections.** This makes it easy for multiple authors to work on different parts of the paper simultaneously and keeps navigation within each section manageable while editing. If you *must *use a single file, here are some names to avoid: paper.tex, main.tex, main_paper.tex, etc.

**Give the paper repo a meaningful name. **It goes without saying that you are versioning the paper in Git, right? So give the GitHub repository a meaningful name. Bad names: paper, Paper, SOSP-paper, SOSP-2019-paper, Joes-Paper, etc. Pick a name that ideally gives a clue to what the conference is and what the paper is about. This is especially important if you work in a group that sends multiple papers per year to the same conference.

**Get the author list correct early on, and establish expectations about writing effort. **The order of the author list matters, as does whether someone appears as an author or in the Acknowledgments section. Practices vary so ask your advisor.

# Final Checks


Pat Hanrahan says: "The Future Work section must be earned".  If you haven't made us care about your contribution thus far, we won't care to read Future Work either.

Armando says: There's 3 kinds of statements in a systems paper: statements supported by citations, statements supported by experiments (yours or others'), and opinions.  Avoid opinions.

Remember that this will be read by people who (a) have never heard of you and the review is anonymous anyway, (b) have never heard of your project, (c) are reading about 15-20 papers apiece, all in different subject areas. They will spend the first 5 minutes deciding if your paper is actually good enough to be worth a fully detailed read; they will then spedn an hour or so reading it in detail, trying to figure out (a) what your contribution is, (b) if the contribution is substantial enough to be worth publishing, (c) if the contribution is "feasible" (ie it is implementable and therefore would be useful to someone).

-   Does the paper make clear precisely what your new contributions are, and how they are different/better than existing approaches to this or similar problems?
-   Does the outline of the paper (sections, subsections, etc.) cohere regardless of the granularity at which you view it? (The Outline mode of MS Word is a valuable feature for this check.  I also wrote a simple Perl script that does this for LaTeX files.)
-   Have you observed the following invariant: Before telling me what you did, tell me why I should care.
-   Have you had it read by at least one person familiar with each of the areas the paper impinges on? (Think of them as consultants in that area. There is a risk that you will get some of the details wrong in talking about an area that is tangential to the paper but that you're not very familiar with, and if a reviewer happens to be versed in that area, it decreases your credibility. Such references are easy to get right, so there is no excuse.)
-   Have you searched carefully for any related work, and properly acknowledged it? The availability of papers and search indices on the Web makes it worse than ever to overlook significant related work.
-   Can you read only the abstract and conclusions and be able to give someone else a 30-second digest of what the paper claims it says?

Good reviewers are overloaded.  Remember, Butler Lampson is looking for an excuse to stop reading your paper.  Don't give him one.
