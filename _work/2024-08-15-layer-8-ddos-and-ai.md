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

# Layer 8 DDOS and AI 

** * I think I have to preface by saying this is all speculation and done for education purposes *

The concept of a Layer 8 DDOS is based on the OSI Model. Traditionally, DDOS or DOS attacks are aimed at specific layers with the goal of taking up all the resources available, hence the naming denial of service. Taking some creative liberty here, Layer 8 refers to the human resources available behind the computer.

So, say you have a ticketing system that takes in support requests from users. With the widespread access to AI, it is feasible to overload a ticketing system with questionably genuine support requests, along with sending them from different emails and IP addresses. The result is that human operators processing the tickets will spend a lot of time trying to resolve the dubious tickets.

Aside from the evilness of the act, how would a company even set up safeguards for such an "attack"? They would need to discern whether or not the person making the data is a bot or not. I'm sure that there should be literature on this because I don't think it is a novel problem. Before this new threat a person could easily affect the A/B testing of a website by setting up bots to do random things on the website. What initially comes to mind is some basic heuristics that might be able to filter out some tickets, such as user metrics, captcha, and other behavioral characteristics. However, I'm not entirely sure that those heuristics would hold strong enough than the will for a bad actor to actively break them.

Yeah, that's the end of the blog. I'm not too sure of any enduring strategies against this, but maybe you have some ideas. Open-source communities are facing the same problem due to bug bounties and other social incentives to make "helpful" commits (*cough* resume building), so hopefully, we find a feasible solution.

Fun and depressing random note: Any "fake agent" or "bad faith actor" can be seen as a dos attack on society. It takes time and context to verify if something being put out is actually true or not.

<br/><br/>

## Citations

Ferrara, Emilio et al. “The rise of social bots.” Communications of the ACM 59 (2014): 96 - 104.

Liu, Fang and Ness B. Shroff. “Data Poisoning Attacks on Stochastic Bandits.” ArXiv abs/1905.06494 (2019): n. pag.

Wang, Yizhen and Kamalika Chaudhuri. “Data Poisoning Attacks against Online Learning.” ArXiv abs/1808.08994 (2018): n. pag.
