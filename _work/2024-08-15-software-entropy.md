---
categories:       blog
date:             2024-08-15
description:  >-
    Understanding what software entropy is.
lang:             en
last_modified_at: 2024-08-15
layout:           post
tags:
- Work
title: >-
 Software Entropy and Silver Bullets
layout:           style
name: >-
 Software Entropy and Silver Bullets
---

I wanted to write this blog to make the necessary scoping of software entropy
Specifically waht software entropy encaptures as a behavior of software.
A lot of people learn about this concept throughout college or the workplace,but I feel that there isn't a clear enough distinction. This ends up leading to the common misconception that there really isn't anything to do for 
software entropy and that by some magic a software codebase will decay 
into an incredible mess littered with arcane logic. I want to argue against
this and make the distinction on what causes software entropy. I'm pretty sure it is well understood in the workplace and gets into their intuition, so this post really is for the uninitiated.

What is software entropy? The Google definition is: "Software entropy is a term used to describe the natural degradation of software systems over time". That to me is incredibly misleading because it is not the binary of the software that is somehow bit-flipping as you don't touch it for a while. I argue, that it is the understanding of the abstractions that you wrote into the software, and the logic that you used to compose the software which decays over-time. Viewing it from that perspective, frames the conversation of dealing with software entropy in a pragmatic way. There are some practical things that can combat against the decay of understanding the software which have been built-up overtime.

Borrowing from the concepts of accidental and essential complexity. Software entropy would be classified under the former. For example, the code that got the rocket to the moon dealt with essential complexity: the calculations and controls needed to navigate the rocketship accuractely and accidental complexity: the coordination and maintanance of software development. In my reflections, the two are similarily related to software entropy in the realm of design abstractions. You can have a bad design choice for the essential complexity or accidental complexity in implementing and communicating the abstraction.

Once, software entropy is understood as not a magical deterioration of software code, the solution for this can be more clear: "following the practices set-out in minimizing accidental complexity". After a project has hashed out the domain/essential complexity of the topic, there is already a suite of contextual best-practices whether it is a lond standing company or newly-born start-up. Shiny new static analyzer tools help manage against this like SonarQube.

To oversimplify: good design + good code + good documentation = no software entropy.

<br/><br/>

## Citations

Brooks, F.P. (1987). No Silver Bullet: Essence and Accidents of Software Engineering.