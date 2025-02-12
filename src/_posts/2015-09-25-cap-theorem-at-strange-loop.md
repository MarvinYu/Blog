---
layout: talk
title: "CAP is broken, and it's time to replace it"
venue: Strange Loop
place: "St. Louis, Missouri, US"
venue_url: https://github.com/strangeloop/StrangeLoop2015/wiki/Unsessions#cap
slides_url: https://speakerdeck.com/ept/a-critique-of-the-cap-theorem
---

<script async class="speakerdeck-embed" data-id="b9da18d42bf240cba5891d963956b950" data-ratio="1.41436464088398" src="//speakerdeck.com/assets/embed.js"></script>

Abstract
--------

This is a discussion session around my paper
"[A Critique of the CAP Theorem](http://arxiv.org/abs/1509.05393)",
[arXiv:1509.05393](http://arxiv.org/abs/1509.05393) [cs.DC].

The CAP Theorem, as proposed by Brewer and formalized by Gilbert and Lynch, has been subject of much
debate and confusion over the last few years. The confusion arises partly from the definitions of
"consistency," "availability" and "partition tolerance," which are not as intuitive or precise as
one might hope, and which are therefore prone to being misinterpreted. I will also argue that there
are some formal problems with Gilbert and Lynch's proof which weaken the result. With so many
problems, it is becoming doubtful whether CAP is still useful for reasoning about systems.

The trade-off between consistency guarantees and tolerance of network faults is real, but we need
better tools for reasoning about these trade-offs. In this session I will show some formal results
from distributed systems theory that I have found useful: they focus the discussion on **latency**
(which has been described as the "missing piece of the CAP theorem"). We'll then open up for
discussion, and hopefully together we can work towards replacing CAP with something better:
something more precise, more intuitive, and more relevant to practice.
