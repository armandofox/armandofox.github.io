---
title: "Recovery-Oriented Computing (ROC)"
permalink: /research/roc
type: page
sidebar:
  nav: "research"
layout: single
---

Recovery-Oriented Computing (2001-2006)
-----------------------------------------

Availability, or the fraction of time a system is "up" and able to do its job, is a critical aspect of today's computing infrastructure, especially cloud computing. Availability is defined in terms of Mean Time to Failure (MTTF) and Mean Time to Recovery (MTTR): A=MTTF/(MTTF+MTTR). While most previous work focused on improving availability by increasing MTTF, we wanted to explore improving availability by decreasing MTTR. A perfect availability is 100.0%; the best achieved in practice, 99.999% by the US public telephone system, corresponds to just 5 minutes of service downtime per year, a level of availability that cannot be achieved if humans must participate in every operational decision [1].

One avenue we explored to reduce recovery time was the construction of software building blocks in which common operations, such as failure recovery, scaling up/down, or reprovisioning, can be achieved by rebooting a machine (or its dual, adding a new machine and killing the faulty one). The policy is based on the use of statistical machine learning techniques, now common in datacenters, to automatically identify and react to problems that would take too long for a human operator to diagnose manually. Two themes from this work have influenced the design of recent commercial and research systems. The first is the design stance of *crash-only software* [2]: since robust software must survive unexpected crashes anyway, the crash recovery code should be the *only* recovery code, and any non-crash problem (slowdown, anomalous behavior, etc.) observed during operation should be immediately coerced to a crash failure. This radical design simplification allows focusing on optimizing the performance of the one and only recovery path.

The second theme is exploiting this fast recovery by applying machine-learning-based problem detection techniques that, despite having nontrivial false positive rates, can still improve overall availability if the "unnecessary" recovery is cheap enough. Engineers and researchers at Amazon, Oracle, eBay, Microsoft and Google have told us they were strongly influenced by the demonstration of these techniques, and Aster Data Systems (founded 2005, subsequently acquired by Teradata) designed its parallel clustered database as crash-only from the ground up. Hewlett-Packard put some of the machine-learning-based problem detection and diagnosis technology into its system monitoring products. The combination of machine learning for analyzing log data and visualization to draw the human operator's attention to interesting patterns in the data was demonstrated on real failure log data from Ebates.com and subsequently at Google.\
The approach enabled by ROC could therefore be summarized as:

-   Make recovery fast.
-   Recast recovery and other operational tasks in terms of a small repertoire of simple operations, such as "reboot", "microreboot",or "add or remove a machine". These should incur minimal performance cost, so as to tolerate false positives.
-   Apply SML to identify problems, predict performance, etc. to support operational decisions that can be automated, even if the SML algorithms are less-than-perfect (false positives).
-   For non-automatable operational tasks or problem resolution, combine SML and visualization to build better tools to support human operators' data exploration (as we did in [[11]](http://www.armandofox.com/geek/home/recovery-oriented-computing-roc/11)).
-   PI's: David Patterson and Armando Fox

Original [ROC project pages](http://roc.cs.berkeley.edu/)
---------------------------------------------------------

Selected ROC publications
-------------------------

1.  G. Candea, A. Brown, A. Fox, D. Patterson. "Building multi-tier dependability." IEEE COMPUTER 37(11), Nov. 2004 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/n09.pdf)
2.  G. Candea, A. Fox. Crash-Only Software. Proceedings of theProc. 9th Workshop on Hot Topics in Operating Systems (HotOS IX),Lihue, HI, May 2003 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c22.pdf)
3.  E. Kiciman, A. Fox. Detecting and localizing application-level failures in Internet services. IEEE Transactions on Neural Networks,Spring 2005 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/j05.pdf)
4.  M.Y.Chen, A. Accardi, E. Kiciman, A. Fox, D. Patterson,E. Brewer. Path-Based Failure and Evolution Management. Proceedings of the 1st USENIX/ACM Symposium on Networked Systems Design andImplementation (NSDI 2004), San Francisco, CA, March 29-31, 2004 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c23.pdf)
5.  G. Candea, S. Kawamoto, Y. Fujiki, G. Friedman, A. Fox. Microreboot: A Technique for Cheap Recovery.Proceedings of Fifth Intl. Conference on Operating SystemsDesign and Implementation (OSDI '04), San Francisco, CA, December2004[PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c26.pdf)
6.  A. Huang and A. Fox. Cheap Recovery: A Key to Self-ManagingState. ACM Trans. on Storage 1(1), 2004 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/j04.pdf)
7.  B. Ling, E. Kiciman, A. Fox. Session State: Beyond SoftState. Proceedings of the 1st USENIX/ACM Symposium on NetworkedSystems Design and Implementation (NSDI 2004), San Francisco, CA,March 29-31, 2004 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c24.pdf)
8.  S. Zhang, I. Cohen, M. Goldszmidt, T. Kelly, J. Symons,A. Fox. Capturing, Indexing, Clustering, and Retrieving SystemHistory. Proc. 20th Usenix/ACM Symposium on Operating SystemsPrinciples (SOSP '05), Brighton, UK, October 2005 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c29.pdf)
9.  S. Zhang, I. Cohen, M. Goldszmidt, T. Kelly, J. Symons,A. Fox. Ensembles of models for automated diagnosis of system performance problems. Proceedings of Intl. Conference on DependableSystems and Networks (DSN 2005), Yokohama, Japan, June 2005 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c28.pdf)
10. M. Goldszmidt, I. Cohen, S. Zhang, A. Fox. Three challenges atthe intersection of machine learning, statistical induction, and systems. Proc. 10th Workshop on Hot Topics in Operating Systems(HotOS-X), Santa Fe, NM, June 2005 [PDF](http://www.armandofox.com/people/fox/static/pubs/pdf/c30.pdf)
