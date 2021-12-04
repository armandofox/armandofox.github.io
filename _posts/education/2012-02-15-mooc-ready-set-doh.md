---
title: "Ready..set...d'oh"
category: ["Education"]
---

The [online version of our SaaS course](http://saas-class.org/) officially starts this coming Monday, 20-Feb-2012, although we "soft launched" this week and are putting up some of the introductory videos now.

We've been busily debugging the homeworks, autograder and other technology at Berkeley, hoping it won't melt down when lots more students take it.

But surprisingly, those aren't the things that made my heart skip a few beats the last couple of weeks.

It turns out that when you have 60,000 people enrolled, if 0.1% of them experience a problem, you'll immediately get 60 identical emails.  And these people are resourceful: they simply Googled the names of the instructors and sent email to our personal email accounts at Berkeley.  Here are some problems those people had in the last couple of weeks.

Fun event #1: Kindle ebook disappears from Amazon.com
-----------------------------------------------------\
About 2 weeks ago, the Kindle ebook mysteriously disappeared from the Kindle store, showing "currently unavailable" if you visited [its page](http://www.amazon.com/dp/B006WU5G4C).

-   We received no email warning before this happened.

-   No further explanation was provided on the Author/Publisher dashboard as to why it occurred.  In fact, according to the dashboard, our ebook was "live" and available for sale.

-   There was no way to appeal except by sending email via the Amazon KDP "author support" form; we had done this in the past and it takes 3-4 days to get a response to such requests.  No phone number is provided for author support.  (In contrast, [CreateSpace](http://createspace.com/), the print-on-demand company handling the print version that ironically is owned by Amazon now, has excellent telephone support.)

-   Desperate, we used our academic connections to the highest levels of Amazon to get this looked at.

-   We learned that there was a formatting issue with our ebook, and apparently when enough customers complain about that, the ebook is pulled.  Amazon's system was supposed to have sent us an email notification of the problem to give us a chance to fix it, but due to a bug on their end, that email never got sent.

-   Once the escalation occurred, everything was resolved within a day; but if we hadn't had higher-up contacts at Amazon, we would have been screwed.

Fun event #2: saasbook.info mysteriously shut down for "terms of service violations"
------------------------------------------------------------------------------------\
Last week the [book's website](http://saasbook.info/), hosted on Google Sites, was mysteriously shut off by Google "for terms of service violations".  This was puzzling and panicking, since we had just announced to 57,000 students that they could start perusing the book, and this site was where they were directed to go to get it.  Plus, having the students see "This site has been taken down for TOS violations" made it sound like we were fronting pornography or running a link redirector or something equally questionable.

The scenario was eerily similar to the Amazon problem:

-   We received no email warning before this happened.

-   No further explanation was provided on our Google Sites dashboard as to why it occurred.

-   There was no way to appeal (except to click a single button that said "Appeal" with no other explanation).

-   Desperate, we used our academic connections to the highest levels of Google to get this looked at.

-   We learned that our site had been mistakenly manually misclassified as spam---which was puzzling for any number of reasons).

-   Once the escalation occurred, everything was resolved within a day; but if we hadn't had higher-up contacts at Google, we would have been screwed.

Fun event #3: courseware VM can't be downloaded or uploaded
-----------------------------------------------------------\
We had numerous complaints from people unable to download the courseware VM via our [AppEngine front end](http://saasbook.appspot.com/), and our TA's were having trouble uploading the image file. Apparently, there were two problems.  One is that Google's blobstore sometimes sporadically throws an error that doesn't occur till the end of the upload, i.e. after spending 10 minutes uploading a 1.7GB file.  The error occurs inside one of the wrappers for the BlobStore API, and doesn't get logged or rescued, so even though we have tech support at Google for this, there's no way to show them what error occurred.  We ultimately transmitted the VM image file to a colleague at Google who was able to upload it via Google's intranet.  If we hadn't had this higher-up contact at Google, we would have been screwed.  (See a pattern yet?)

The other problem seems to occur for people whose Internet service is anemic.  The downloads get throttled and take so long that their ISP's time out their TCP connection. We're going to recommend to these folks that they use a download manager; one of the users discovered by accident that deeplinking to the AppEngine app works just fine.

We're also going to torrent the file, and we've  [provided an alternative](http://saasbook.info/bookware-vm-instructions) to downloading a VM image---we created an Amazon Machine Image that can be used on EC2.  (A shout out to [Yarko Tymciurak](http://www.google.com/url?sa=t&rct=j&q=yarko%20tymciurak&source=web&cd=2&ved=0CCoQFjAB&url=https%3A%2F%2Fplus.google.com%2F112974129603800923888&ei=Eiw8T6zeEamgiQKukKihAQ&usg=AFQjCNHlJ1AQIVnOnDN6ZewEFibMS9n1uQ) in the Chicago area who got us started on this!)  However, for students who don't want to pay for EC2 usage, the [free "micro" tier](http://aws.amazon.com/free) is just barely adequate to do this work---the CPU pins right away when running tests or builds.

Fun event #4: Kindle ebook updating doesn't quite work the way we were told
---------------------------------------------------------------------------\
An early and influential factor in our decision to focus heavily on an ebook was that we were assured that if we made significant changes to the ebook, we'd be able to quickly push them out to students by notifying Kindle author support, which would then notify purchasers of the ebook that they had the option of re-downloading a newer version.

This is partly true.  We tried this process last week, since we did in fact fix a bunch of typos and formatting issues reported during the first 4 weeks of the Berkeley course.  It took 3 days for us to get a response from Kindle author support.  The response was that we should submit detailed information about what changes were made, and "within 2 weeks" they'd make a decision of how and whether to handle our request to push the update.  So much for instant update.  They seemed to imply, though, that there was a way they could enable students to request a re-download if we notified students that one was available, so we're going to try to go that route.  I hope this works, since we expect at least one more rev of the ebook by the end of the online course and then another before the planned summer offering of the online course.

Fun event #5: our Kindle book price is apparently just a suggested price
------------------------------------------------------------------------\
We had various ebook purchasers complain that although our own Web site says the ebook costs US$9.99, Amazon was displaying a higher price for them, as much as 27% higher in some cases.

It turns out that Amazon can, at their discretion, charge more for your ebook in certain territories "where their operating costs are higher".  So it was with chagrin that we read these emails, given that we had agonized over the price a fair amount and ultimately decided to keep it below $10.

It also turns out that Amazon can, at their discretion, charge *less* for your ebook if they're doing it to price-match a competitor or for other promotional purposes.

But things are rolling along anyway
-----------------------------------\
But the news isn't all bad.  Kindle ebooks are outselling print books by more than 4 to 1.  We've even gotten complaints that people in Indonesia can't buy the ebook (which is unfortunate, but it's humbling that we have followers that far away).

We can't tell how many people are buying both the print book and ebook, since we haven't been able to work out bundling. (Though we are working on it.)  We also can't tell how many additional people, if any, have downloaded the free Kindle sample (which roughly corresponds to the first chapter of the book, therefore the first week of class) and may be considering buying the full version later.

We have a very  nice iBooks version about to come out with interactive self-assessment questions and screencasts built right in, and we will probably do a Nook/ePub version for people with non-Kindle ebook devices (though that's a lower priority).

Overall, it's been a major learning experience so far trying to reach this many people.  Next week comes the real test...
