---
date:             2024-07-21
last_modified_at: 2026-04-08
tags:             [systems, failure-modes, testing]
title:            How Complex Systems Fail
name:             How Complex Systems Fail and Crowdstrike
layout:           style
description:  >-
  The recent Crowdstrike incident and insights.
comment: it was regex in the kernel?
---

# [How Complex Systems Fail](https://how.complexsystems.fail/)

Due to the recent **global** IT outage caused by *CrowdStrike* and the ironic timing of my reading Cook's work. I have decided to relate some points made by Cook to what happened at *Crowdstrike*.

## [2.](https://how.complexsystems.fail/#2) Complex systems are heavily and successfully defended against failure

> "The high consequences of failure lead over time to the construction of multiple layers of defense against failure."
> {% include figcaption.html caption="Robert Cook" %}

Complex systems, like software systems, are "*complex*" and if local failures cascade to global failures. The important part being: "*there are many layers of defense against it*". Even a small software project carries a lot of context with it. How do all the functions relate to each other?; What is being expressed?

The sane thing to do is follow best practices like software testing. Validating the state or outputs of the software with type checkers, linters, and unit tests is all standard practice---or at least should have been---when making software.

The question is, why did *CrowdStrike* not do so? Or did they do so, but the tests did not have enough fidelity? Either way, it seems like incredible negligence.

After some digging, it seems it was a malformed file pushed by *Crowdstrike* themselves, and when read by CSAgent.sys, it blows everything up. Now the next question is, why was the file malformed, and was the error handling nonexistent?

For a kernel driver, I would assume there have to be standards of requiring error handling because if not, it will crash the OS... right? 

My line of questioning here is to highlight the #2 point. Kernel and other drivers have been in development for decades. People have to have realized the best practices and common playbooks for building/testing/linting them. Especially so they wouldn't go kaboom to take down the world's IT infrastructure.

### Update From the Future (06/22/2025)

Not only did *Crowdstrike* not write correct tests for their "*configuration/templates*" in checking if they were "*malformed*". They failed to test these changes in a "*staged*" environment, which led to the configurations being sent out to be "*consumed*" in a faulty state.

[https://www.crowdstrike.com/blog/falcon-update-for-windows-hosts-technical-details/](https://www.crowdstrike.com/blog/falcon-update-for-windows-hosts-technical-details)

## [7.](https://how.complexsystems.fail/#7) Post-accident attribution to a 'root cause' is fundamentally wrong

> "Because overt failure requires multiple faults, there is no isolated 'cause' of an accident."
> {% include figcaption.html caption="Robert Cook" %}

Of course, some heads will roll due to the nature of the incident. Fundamentally, the higher processes and systems were at fault. In other words, the software developer inherited the system defects rather than injected them.

What I'm saying is: "*safety isn't the behavior of a system, rather a virtue of the system*". Meaning: "*it was likely a cultural issue*". If the core mindset of a company is to "*build and fail fast*", then behavior won't save it from failures. Even if you have a "*good*" CI/CD set-up, the nature of the company will allow those safety procedures to be overridden without consequence.

## Conclusion

1. Write more tests and faithfully validate the states of your software.
2. Edge cases are real, but they go uncaught.
3. I'm interested in seeing how litigation goes for this.

{% include video.html src="https://www.youtube.com/embed/bLHL75H_VEM?si=0Oy8artPhcsKbiCS" %}

## Citations

Allspaw, J., & Cook, R.I. (2010). How Complex Systems Fail. Web Operations.

Patriarca, R., Bergström, J., Di Gravio, G., & Costantino, F. (2018). Resilience engineering: Current status of the research and future challenges. Safety Science, 102, 79–100. https://doi.org/10.1016/j.ssci.2017.10.005
