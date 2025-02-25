---
title: "Four Shades of Gray: The Amazon Kindle Platform"
categories: ["Book summary"]
---

This entry in the Platform Studies series (which I've been enjoying
quite a bit, mostly for its retro tech features) focuses less on the
Kindle technology, which in itself is unremarkable, and more on the
marketing of the product and how it's affected readers, reading,
publishing, etc.  In this regard, I find the Kindle a bit like the
iPod: the technology was already there, but someone had to get the
experience right.

I was a Kindle early adopter, and 
[wrote]({% link _posts/tech/2008-07-10-buying-kindle.md %})
[about]({% link _posts/tech/2009-06-17-kindle-dx.md %})
buying it and my early experiences, and later about the underused
potential of the 
[Kindle DX]({% _posts/tech/2009-06-17-kindle-dx.md %})
(such as for making [textbooks usable]({% link _posts/tech/2009-05-08-kindle-dx-textbooks.md %}))
and my [disappointment]({% link _posts/tech/2012-04-10-kindle-fire-fail.md %})
with the [Kindle Fire]({% link _posts/tech/2012-11-25-kindle-fire-good-enough.md %}) 
which I didn't realize at the time was primarily going to end up as a low-cost game tablet for the gounger set. 

The book correctly observes that especially the early models seemed an
awkward compromise between a "book reading experience" (easy to hold
in one hand, turn pages, flip, etc.) and a "computing experience"
(enter notes using a keyboard, create bookmarks, notion of "Location
in book" rather than page or chapter numbers, etc.) and discusses a
bit of the evolution of the UX.

From the beginning, the Kindle benefited from Amazon's unusual
collection of diverse expertise: cloud computing/networking, retail,
huge scale, and data mining.  Amazon's size and publisher clout meant
it could encourage publishers to digitize books, and often dictate
terms; Kindle was the only e-reader to launch with a sizable library
of desirable titles (c. 88,000).  Similar to what happens with
bookstores, Amazon's huge catalog (>65M book titles) props up "loss leader" discounting
practices, and customers in that long tail can be targeted by data
mining. 

The author notes the success of AWS as an example of how, rather than
keeping a particular innovation for internal use only, Amazon has
succeeded by virtualizing its innovations and infrastructure and
reselling them: AWS resells its well engineered cloud services,
"fulfillment by Amazon" lets third parties sell directly to consumers
(rather than locking consumers to Amazon's retail channel) while
enabling those third parties to take advantage of Amazon's remarkable
fulfillment infrastructure.  Similarly, although Amazon was by far the
largest print book retailer by 2007, when the Kindle launched without
any serious competitors, it had the chance to become *the*
infrastructure for digital book distribution---offsetting any
potential losses from selling fewer print books.  

The combination of features, and lack of oversight since everything is
automated, has
led to some strange problems.
For example, third-party retailers may sell an item that Amazon also sells directly,
charging more for the item [suggesting the retailer doesn't stock it
but will obtain it at time of purchase] or getting metadata wrong.
And CreateSpace (Amazon's print-on-demand service) had lots of
fake books by real authors whose SS# or other identifying info had
been obtained by fraudsters, at least enough to link to that author
"officially" on Amazon.

Kindle changed the way books are marketed and sold.  Rather than
hierarchies of categories, Amazon relies on data-mining the
relationships among titles and among purchasers' buying patterns
("Frequently bought together", "You might also like", etc.), though it
"bootstrapped" its catalog from the Bowker Books In Print catalog in
1994.  In contrast, libraries and other channels have relied on such
traditionally authoritative sources regarding metadata and
discoverability.  And because the data mining done in the Kindle Store
(including reviews, downloads, etc.) is generally not made available
to publishers, it establishes a positive feedback loop in which
editions designed for Kindle Store distribution are more successful
than those produced primarily for print distribution.

To keep control over the ecosystem, Amazon deliberately obfuscates and
rapidly evolves the file format (which started as a Mobi/Epub
derivative but has lots of Amazon-specific things now), and often
disables "advanced" features supported by the format in order to avoid
bugs or other undesirable behavior that would need oversight, such as
SVG graphics that allow overlays.  In short, the formats are designed
to meet the needs of publishers and distributors, not readers.

Technical problems such as Unicode characters have been solved by
having each ebook carry its own dictionary containing the information
and glyphs to render only those UTF-8 characters actually used in that book.
Still, the challenges of getting publishers to embrace and adopt
ebooks were far harder than the technical problems.  The speed of
technology development and the publishing tools pipeline for ebooks
exists in a different universe than the process of traditional
publishers (as my co-author Dave Patterson and I found out when we
chose to self-publish our [textbook](saasbook.info)).
