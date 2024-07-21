---
categories:       blog
date:             2024-07-21
description:  >-
  The recent Crowdstrike incident and insights
lang:             en
last_modified_at: 2024-07-21
layout:           post
tags:
- Life
title: >-
  How Complex Systems Fail
layout:           style
name: >-
  How Complex Systems Fail
---

# [How Complex Systems Fail](https://how.complexsystems.fail/)

In light of the recent IT outage caused by Crowdstrike and the ironic timing of me reading Cook's work on human error in complex systems, I have decided to detail my own thoughts and research on this debacle.

## [2.](https://how.complexsystems.fail/#2) Complex systems are heavily and successfully defended against failure

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"The high consequences of failure lead over time to the construction of multiple layers of defense against failure."</p>
    </blockquote>
</figure>

My first question as a writer of code is: How did the build-test pipeline even let this occur? Surely any changes made would have been build and tested in the different Windows OS versions it supports so it doesn't crash. Right? Doing some digging in forums, it seems to be that it wasn't a simple error that occurred but instead caused by moving parts (of course). Although the current theories is the CSAgent.sys failed to handle malformed files or they pushed the nulled C...32.sys.

After some more digging, it seems to be that it was a malformed file pushed by their own webserver and when read by CSAgent.sys blows everything up. Now the next question is why was the file malformed and was the error handling non-existent? I mean for a kernel driver I would assume there has to be some standards of requiring error handling because if not it will just crash the OS... right? On top of that was there not a process of handling the addition of channel files to ensure data integrity for them?

I kind of went on a tangent there, but the whole point of my line of questioning here is to highlight the #2 point. Kernel and other drivers have been in development for decades. I'm (hopeful) sure people have realized the best practices and common playbooks for building/testing/linting them in such a way that they wouldn't go kaboom to take down the world's IT infrastructure.

[https://www.crowdstrike.com/blog/falcon-update-for-windows-hosts-technical-details/](https://www.crowdstrike.com/blog/falcon-update-for-windows-hosts-technical-details)

## [7.](https://how.complexsystems.fail/#7) Post-accident attribution to a 'root cause' is fundamentally wrong

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 18px;">
    <p>"Because overt failure requires multiple faults, there is no isolated ‘cause’ of an accident."</p>
    </blockquote>
</figure>

I think this is the best mindset going forward, off-course some heads will roll due to the nature of the incident. Still, fundamentally I still believe the higher processes and systems were more likely to be the fault. In other words, the software developer inherited the system defects rather than injected them. I won't speculate on this because the facts of the matter are not entirely clear either, but come on if it really was someone uploading a faulty file, It doesn't seem that it was their fault entirely.

## Conclusion

1.  Write more tests and faithfully validate the states of your software.
2.  Edge cases are very real, but they go uncaught.
3.  I'm interesting in seeing how litigation goes for this.