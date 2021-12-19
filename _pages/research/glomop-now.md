---
title: "GloMop"
permalink: /research/glomop-now
type: page
sidebar:
  nav: "research"
layout: single
---


Global Mobile Computing / Networks of Workstations (1994-1999)
----------------------------------------------------

My PhD thesis work was the GloMop (Global Mobile Computing by Proxy)
project, part of
the [Daedalus](http://daedalus.cs.berkeley.edu/) research effort,
which made use of the pioneering Bay Area Research Wireless Access
Network (BARWAN) funded as part of the DARPA GloMo (Global Mobile
Computing) project, 
and was one of the federated projects that was part of Berkeley NOW (Networks of Workstations).

A main contribution of GloMop was the design and evaluation of SNS, a scalable network server for TACC (transformation, aggregation, caching, customization, the building blocks of Web services). The work was done as part of the BARWAN/Daedalus project and the NOW (Network of Workstations) project. The basic architecture laid out for the TACC server is essentially the basis of today's Web services.

*Note: If you are a patent attorney, litigation firm, or similar entity seeking the original design documents and source code connected with this project, perhaps to use as prior art to overturn a silly patent, all of that code and all the design documents I still have are [posted on GitHub](https://github.com/armandofox/glomop).*

## Research summary

In late 1994, Prof. Eric Brewer and I (at UC Berkeley) became involved in the Berkeley [InfoPad](http://infopad.eecs.berkeley.edu/) project, whose mission was to build a very simple, extremely low-power, picocell-wireless, portable multimedia terminal (tablet-like form factor) that relied entirely on software "in the infrastructure" (i.e. running on powerful servers) to provide the intelligence for the system. Later, Eric and Prof. Randy Katz started the BARWAN/Daedalus project to further explore how to facilitate wireless Internet access for heterogeneous devices over a range of wireless networks. We extended the InfoPad ideas in two distinct directions.

The first was the development of a systematic framework for placing intermediaries, called proxies, between clients and servers, to compensate for limitations of the client or network (small screen, low bandwidth, etc.). We extended the original InfoPad implementation of this concept into a mechanism for [datatype-specific lossy compression, or *distillation*](http://portal.acm.org/citation.cfm?id=248209.237177), giving measurements to show why it was a good approach for adapting to client and network heterogeneity in general.

We then built a [scalable cluster-based version of the distillation proxy](http://portal.acm.org/citation.cfm?id=266662), the prototype of many contemporary cluster-based Internet applications. The main contribution was the separation of scalability and availability concerns from the main application logic, through the careful application of a small number of simple robustness mechanisms. Although this imposed some constraints on how applications could be structured, we found that a broad class of Internet applications could benefit from our framework. The programming model, called TACC (Transformation, Aggregation, Caching, Customization, for the four elements that seem to dominate interactive Internet applications), emphasized composition of existing services and modules to quickly create new services; the server, called SNS (Scalable Network Server), was a prototype cluster-based TACC server that was deployed on the Berkeley Network of Workstations (NOW) and for a while served 10,000-15,000 users.

[Top Gun Wingman](http://portal.acm.org/citation.cfm?id=1659266) was the first graphical Web browser to run on a handheld device (the PalmPilot PDA), relying heavily on the proxy to deliver a good browsing experience on the thinnest of clients. Some aspects of this work were commercialized and extended by ProxiNet, Inc., which I co-founded in 1997 and was later acquired by Puma Technology.

Areas left open included the question whether the looser semantics afforded by the TACC model (we called them BASE, for best-effort availability, soft state, and eventual consistency, to distinguish them from ACID) could be applied in other domains and if so, what consistency and state-management guarantees could be made to such applications. Eric Brewer and I [co-authored a paper for HotOS-VII](http://en.scientificcommons.org/42843872) that discusses the trade-offs between harvest (quality of an answer from a query engine) and yield (probability that an answer will be received); we identified some structural commonality between the Inktomi search engine and various TACC applications.
