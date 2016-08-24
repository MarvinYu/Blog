---
layout: talk
title: Conflict resolution for eventual consistency
venue: GOTO Berlin
place: Berlin, Germany
venue_url: http://gotocon.com/berlin-2016/presentations/show_talk.jsp?oid=7910
---

Abstract
--------

What do collaborative editors like Google Docs, the calendar app on your phone, and multi-datacenter
database clusters have in common?

Answer: They all need to cope with network interruptions, and still work offline. They all allow
state to be updated concurrently in several different places, and asynchronously propagate changes
to other nodes. If data is concurrently changed on different nodes, you get conflicts that need to
be resolved.

There are different approaches to handling those conflicts: some systems let the user manually
resolve them; some systems choose one version as the winner and throw away the other versions; and
some systems try to merge concurrent updates automatically. For example, Google Docs uses an
algorithm called Operational Transform (OT) to perform this merge, while Riak uses Conflict-Free
Replicated Datatypes (CRDTs) to achieve a similar thing.

In this talk we will explore these algorithms for automatic merging. They start out quite simple,
but as we shall see, they soon become fascinatingly mind-bending once you start trying to do more
ambitious things. For example, if you wanted to write your own spreadsheet app or graphics software
that allows several users to edit the same document concurrently, how would you go about doing that?