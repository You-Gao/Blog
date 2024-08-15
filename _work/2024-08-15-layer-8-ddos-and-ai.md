---
categories:       blog
date:             2024-08-15
description:  >-
    A new-age way of denying service.
lang:             en
last_modified_at: 2024-08-15
layout:           post
tags:
- Work
title: >-
 Layer 8 DDOS and AI
layout:           style
name: >-
 Layer 8 DDOS and AI
---
* I think I have to preface saying this is all speculation and done for education pursposes *

The concept of a Layer 8 DDOS, is based of the OSI Model. Traditionally DDOS or DOS attacks are aimed at other protocols in the layer with the goal of taking up all the resources available; hence the naming denial of service. Layer8 refers to the human resources availabe behind the computer.

So say, you have a ticketing system that takes in support requests from users. With the widespread access of AI, it is feasible to overload a ticketing system with questionably real support requests, along with sending them from different emails and ip addresses. The end result is that human operators processing the tickets will have a lot of time spend trying to resolve the dubious tickets.

Aside from the evilness of the act, how would a company even set-up safeguards for such an "attack". Layer 8 DDOS falls under the category of trusting the user behind the website is actually a human. And I'm sure that there should be literature on this because before support attacks, a person could easily affect the A/B testing of a website by setting up bots to do random things on the website. What comes to mind intiially, is some basic heuristics that might be able to filter out some tickets like user age, captcha, and other behavioural characteristic. However, I'm not entirely sure that those heuristics would hold strong enough than the will for a bad actor to actively break them.

Yeah, thats the end of the blog. Not too sure of any enduring strategies against this, but maybe you have some ideas. The same problem is being faced by open-source communities due to bug bounties and other social incentivies to make "helpful" commits (*cough* resume building), so hopefully we find a feasible solution.
