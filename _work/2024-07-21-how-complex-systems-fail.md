---
date:             2024-07-21
description:  >-
  The recent Crowdstrike incident and insights.
layout:           post
title: >-
  How Complex Systems Fail
layout:           style
name: >-
  How Complex Systems Fail and Crowdstrike
comment: it was regex in the kernel?
---

# [How Complex Systems Fail](https://how.complexsystems.fail/)

In light of the recent **global** IT outage caused by *Crowdstrike* and the ironic timing of my reading Cook's work on human error in complex systems; I have decided to relate some of the points made by Cook to what happened at *Crowdstrike*.

## [2.](https://how.complexsystems.fail/#2) Complex systems are heavily and successfully defended against failure

> "The high consequences of failure lead over time to the construction of multiple layers of defense against failure."
> <figcaption class="blockquote-footer">Robert Cook</figcaption>

Complex systems, like software systems, are "*complex*" and if anything goes wrong something bad happens. The important part being: "***there are many layers of defense against it***". Even a small software project carries a lot of context with it; How do all the functions relate to each other?; What is being expressed?

So the sane thing to do is follow best practices---software testing. Validating the state or outputs of the software with type checkers, linters, unit tests, and the likes are all standard practice---or atlest should have been---when making software.

The qustion is why did *Crowdstrike* not do so? Or did they do so and the tests did not have enough fidelity? Either way, it seems like incredible negligence if the answer to either is yes.

Doing some digging in forums, it seems to be that it wasn't a build error that occurred but instead caused by faulty error handling for deserialization. The current theory is the CSAgent.sys failed to handle malformed files or they pushed.

After some more digging, it seems to be that it was a malformed file pushed by *Crowdstrike* themselves and when read by CSAgent.sys blows everything up. Now the next question is why was the file malformed and was the error handling non-existent?

I mean for a kernel driver I would assume there has to be some standards of requiring error handling because if not it will just crash the OS... right? On top of that was there not a process of handling the addition of configuration files to ensure data integrity for them?

My line of questioning here is to highlight the #2 point. Kernel and other drivers have been in development for decades. I'm---hopefully---sure people have realized the best practices and common playbooks for building/testing/linting them in such a way that they wouldn't go kaboom to take down the world's IT infrastructure.

### Update From the Future (06/22/2025)

Not only did *Crowdstrike* not write correct tests for their "*configuration/templates*" in checking if they were "*malformed*"; They failed to test these changes in a "*staged*" environment, which led to the configurations simply being sent out to be "*consumed*" in a faulty state.

[https://www.crowdstrike.com/blog/falcon-update-for-windows-hosts-technical-details/](https://www.crowdstrike.com/blog/falcon-update-for-windows-hosts-technical-details)

## [7.](https://how.complexsystems.fail/#7) Post-accident attribution to a 'root cause' is fundamentally wrong

> "Because overt failure requires multiple faults, there is no isolated 'cause' of an accident."
> <figcaption class="blockquote-footer">Robert Cook</figcaption>

I think this is the best mindset going forward, off-course some heads will roll due to the nature of the incident. Still---fundamentally---the higher processes and systems were more likely to be the fault. In other words, the software developer inherited the system defects rather than injected them. I won't speculate on this because the facts of the matter are not entirely clear either.

To be clear though, what I'm saying is: "***safety isn't the behaviour of a system, rather a virtue of the system***"; Meaning: "***it was likely a cultural issue.***" If the core mindset of a company is to "*build and fail fast*", then simply behaviour wont save it from failures. Even if you have a "*good*" CI/CD set-up, the nature of the company will allow those safety procedures to be overridden without consequence.

## Conclusion

1. Write more tests and faithfully validate the states of your software.
2. Edge cases are very real, but they go uncaught.
3. I'm interesting in seeing how litigation goes for this.

<iframe class="py-3" width="100%" height="350" src="https://www.youtube.com/embed/bLHL75H_VEM?si=0Oy8artPhcsKbiCS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<br/>

## Citations

Allspaw, J., & Cook, R.I. (2010). How Complex Systems Fail. Web Operations.

Patriarca, R., Bergström, J., Di Gravio, G., & Costantino, F. (2018). Resilience engineering: Current status of the research and future challenges. Safety Science, 102, 79–100. https://doi.org/10.1016/j.ssci.2017.10.005
