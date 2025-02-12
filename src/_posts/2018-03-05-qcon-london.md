---
layout: talk
title: "CRDTs and the Quest for Distributed Consistency"
venue: QCon London
place: London, UK
venue_url: https://qconlondon.com/london2018/presentation/crdts-and-quest-distributed-consistency
slides_url: https://speakerdeck.com/ept/convergence-versus-consensus-crdts-and-the-quest-for-distributed-consistency
video_url: https://www.infoq.com/presentations/crdt-distributed-consistency
---

* [Summary blog post](https://www.infoq.com/news/2018/03/data-consistency-crdt)
* [YouTube video](https://www.youtube.com/watch?v=B5NULPSiOGw)

<iframe width="550" height="315" src="https://www.youtube.com/embed/B5NULPSiOGw?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

<script async class="speakerdeck-embed" data-id="98909ba60fa84498889ea81643e3be83" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

Abstract
--------

We all know how to build applications that rely on a central server. However, such centralisation is
not always desirable, and recently there has been new interest in developing decentralised
applications. Blockchains inevitably come up in that conversation, but when you examine them
critically, not every problem is best solved by a blockchain.

In this talk we will explore how to ensure data consistency in distributed systems, especially in
systems that don't have an authoritative leader. We will see how to sync data between your phone and
your laptop without sending it via a remote server. We will explore algorithms that allow several
people to collaborate on a shared document, communicating via a peer-to-peer network.

Conflict-Free Replicated Datatypes (CRDTs) are a set of algorithms that ensure data consistency in
such settings. Recent research on CRDTs has enabled us to better understand their consistency
guarantees and design richer datatypes. On the practical side, CRDTs are making their way into more
and more applications. This talk will examine that research and its uses, showing where we are now
and where we are heading in the future.
