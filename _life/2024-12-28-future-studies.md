---
date:             2024-12-28
description:  >-
    reflecting on my education
layout:           post
title: >-
   Future Studies 
layout:           style
name: >-
   Future Studies 
---


# Future Studies

New Year's, winter break, and staying home all day tends to make people reflect. I decided to spend that reflection on all the existential questions but also on what I want to study for the upcoming year. For some context on where I'm at, I am currently in my 3rd year of school and have run through the gauntlet of theory, algorithms, and low-level shenanigans. So there aren't any of the foundations left to go through, and it feels as if I have left the so-called "tutorial hell" [^1]. Quite literally, the only courses left to take for me are in the 4000s.

Thinking back on this semester, having taken classes like compilers and security, I realize that my interest has shifted toward systems programming. That is systems programming in contrast with application programming. For example, application programming is using Node.js and knowing the APIs/quirks/idiosyncrasies of shipping out an app. On the flip side is writing Node.js, which requires knowledge of libuv, the V8 engine, jitting, comp arch, and so on [^2]. And it intuitively feels more fruitful to gain a deeper understanding of the ladder than the former. I'd try to understand what makes a framework rather than keep up with the greatest, latest, new JS framework.

So the rest of the sections will just be me talking to myself, and the readers, of course, on why I chose that specific section, the subtopics of interest, and how potentially full of myself I might be to say, "I can just study that.".

## Operating Systems/Kernel Modules

What does it really mean for UNIX to treat everything as "*files*" or use file descriptors? This question and so many more motivated me to attempt to understand what actually happens underlying the abstractions the OS gives us. Reasonably enough, any sane person doesn't need to go beyond the 123 fds; each program has 123 mapped to something (usually term) and the guarantee of I/O streams, but I'm not sane. I want to know the underlying wizardry in coordinating read operations to buffers and the subsequent device signals received by the program or what even file descriptors are to the OS.

The aside to all this then is dedicating some time to understanding this hardware/software fuzziness along with the data structures utilized by the kernel. Conceptually, it's just interesting how you have this special program dubbed the kernel that fundamentally interacts with the peripheries to schedule more programs to be run. This all gets up another level when you realize the kernel can handle asynchronous programs, so we can run **2** Google Chromes at once, but also have the coordinate itself with multiple cores to do tasks in parallel. These are pretty interesting and cool things that I got basic conceptual clarity for but not implementation clarity for.

## Distributed Systems

How do multiple computers talk to each other across distances and stay in sync? How do you make a self-repairing, gracefully degradable, and scalable system? These are the core questions that make up the backbone of the internet, and fun questions at that. One piece of this is deeply understanding the networking stack and the OSI layers. The more interesting part, then, is understanding consensus algorithms and setting up the infrastructure. The sort of DevOps playbook that goes into monitoring, production systems, scaling, databases, fault tolerance, and the such.

However, the goal here is not to be surface-level about it. I want to learn past the usage of tools of the trade and how to build the tools of the trade. The goal really here is to try and do this bottom-up for the insight and fun of it. I mean, there already is a plethora of tools out there for doing something like this. Still, I feel like just learning how to utilize, say, AWS tooling to slap on NGINX on top of an Ingress to run CloudFormation templates for a Kubernetes service gimps understanding in the end. So instead, I say go at it with Docker. Go pull the Moby repo and learn how it uses UNIX namespaces/cgroups to set up process isolation or how its networking all maps out.

## Algorithms and Math

I am not a smart person if that's measured in novel math skills. I have hilariously done mediocrely on this topic matter, given my scatterbrained nature. I put this here in the hopes I will review my theoretical computation and discrete math notes. 

<br/>
---
[^1]: Probably disingenuous to call foundational cs thinking and knowledge tutorial hell, but hey.
[^2]: i.e. how Node.js redirects logs to term instead of F12 console in a browser.
