---
layout: talk
title: Samza and the Unix philosophy of distributed systems
venue: UK Hadoop Users Group
place: London, UK
venue_url: http://www.meetup.com/hadoop-users-group-uk/events/223836730/
slides_url: https://speakerdeck.com/ept/kafka-samza-and-the-unix-philosophy-of-distributed-data
video_url: https://www.youtube.com/watch?v=Gqdr0DiNh5g&index=1&list=PL5OOLwV_m9vaKzwGX7lM8oVT3aFw_CN5O
transcript_url: http://hubs.ly/H0125_b0
---

<iframe width="550" height="309" src="https://www.youtube.com/embed/Gqdr0DiNh5g?list=PL5OOLwV_m9vaKzwGX7lM8oVT3aFw_CN5O" frameborder="0" allowfullscreen></iframe>

<script async class="speakerdeck-embed" data-id="98f3dbb96b9640c28c82fbd2355cc1db" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

Abstract
--------

One of the big ideas in Unix was to allow small, simple command-line tools to be chained together
with pipes. Each of those tools would do one thing and do it well. Even now, 50 years later, Unix
tools are one of the most powerful ways of getting things done: a one-liner of
`grep | awk | sort | uniq` is still one of the fastest ways of processing data and analysing logs.

Many modern data systems are monolithic, the very opposite of the Unix philosophy. But Apache Samza
is different: it is, in some sense, an attempt to bring the Unix philosophy into 21st-century
distributed systems. In this talk, we will explore the design decisions behind Samza, and see how
the Unix philosophy can help us build modern systems that are robust, scalable and maintainable.
