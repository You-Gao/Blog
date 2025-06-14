---
date:             2024-08-15
description:  >-
    Understanding what software entropy is.
layout:           post
title: >-
 Software Entropy and Silver Bullets
layout:           style
name: >-
 Software Entropy and Silver Bullets
---
# Software Entropy 

I wanted to write this blog to define the necessary scope of software entropy and precisely what software entropy captures as a behavior of software. A lot of people learn about this concept throughout college or the workplace, but I feel that there isn't a clear enough distinction. This ends up leading to the common misconception that there really isn't anything to do for software entropy and that by some magic, a software codebase will decay into an incredible mess littered with arcane logic. I want to argue against this and make the distinction on what causes software entropy.

## What is software entropy? 

Google defines it as follows: "Software entropy is a term used to describe the natural degradation of software systems over time." The problem is that it is not the binary of the software that is somehow bit-flipping as you don't touch it for a while. **However**, It is the understanding of the abstractions that you wrote into the software and the logic that you used to compose the software that decays over time. Viewing it from that perspective frames the conversation of dealing with software entropy in a pragmatic way. There are practical strategies that can combat the decay of understanding the software that has been built up over time, empowering us to take control.

## Complexity and Entropy

Borrowing from the concepts of accidental and essential complexity. Software entropy would be classified under the former. For example, the code that got the rocket to the moon dealt with essential complexity, such as the calculations and controls needed to navigate the rocket ship accurately, and accidental complexity, such as the coordination and maintenance of software development. 

In my reflections, the two are similarly related to software entropy in the realm of design abstractions. You can have a wrong design choice for the essential complexity or accidental complexity when implementing and communicating the abstraction.

The point is that software entropy should be understood as not a magical deterioration of software code. Then, the solution becomes clearer. The solution really is to follow the practices set out to minimize accidental complexity.

After a project has hashed out the domain/essential complexity of the topic, there is already a suite of contextual best practices, whether it is a long-standing company or a newly-born start-up. However, in the end, everyone hates following best practices because we forget the future is just about the horizon.

To oversimplify: good design + good code + good documentation = no software entropy.

<br/>

## Citations

Brooks, F.P. (1987). No Silver Bullet: Essence and Accidents of Software Engineering.
