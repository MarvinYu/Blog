---
layout: talk
title: "Automerge: Replicated Data Structures for Peer-to-Peer Collaboration"
venue: Distributed Computing and Analytics Workshop
place: RISE SICS, Stockholm, Sweden
venue_url: https://discan18.github.io/program.html
slides_url: https://speakerdeck.com/ept/automerge-replicated-data-structures-for-peer-to-peer-collaboration
---

<script async class="speakerdeck-embed" data-id="3b7f65356b0e437fb2727097a9594e4c" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

Abstract
--------

This talk introduces Automerge, a JavaScript library for data synchronisation between mobile devices
such as laptop computers and smartphones. It allows users to read and modify data even while their
device is offline, and it automatically merges changes made concurrently on different devices.
Unlike most existing data synchronisation systems, Automerge does not require data to be sent via
a centralised server, but rather allows local and peer-to-peer networks to be used. We show how this
project spans the gamut from the theory of Conflict-free Replicated Data Types (CRDTs) and formal
verification, all the way to implementing collaborative applications that use these data structures.
