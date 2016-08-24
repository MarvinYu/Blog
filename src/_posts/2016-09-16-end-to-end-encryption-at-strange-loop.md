---
layout: talk
title: "End-to-end encryption: Behind the scenes"
venue: Strange Loop
place: St. Louis, Missouri, USA
venue_url: http://thestrangeloop.com/2016/end-to-end-encryption-behind-the-scenes.html
---

This is a joint talk with [Diana Vasile](http://www.cl.cam.ac.uk/~dac53/).

Abstract
--------

There is no cloud -- it's just someone else's computer. And you're storing all sorts of sensitive
data on it, blindly trusting that this computer will only allow access to authorised users. What if
it is compromised?

End-to-end encryption avoids having to trust the servers. Although PGP/GPG encrypted email never
went mainstream, secure messaging apps like WhatsApp, Signal and iMessage have shown that it is
feasible for millions of people to use end-to-end encryption without being security experts.

But how do these protocols actually work? In this talk, we will dig into the details of secure
messaging protocols -- to understand the threats against which they defend, and how cryptographic
operations are combined to implement those defences in the protocol. If you have ever wondered what
"forward secrecy" means, how key exchange works, or how protocols can ensure you're communicating
with the right person (not an impostor like a "man in the middle"), this talk will clear things up.

We will also look at taking end-to-end encryption to other areas beyond instant messaging. What
would it take to build an end-to-end secure version of Google Docs, for example?
