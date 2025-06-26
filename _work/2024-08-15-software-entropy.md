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

I wanted to write this blog to define the necessary scope of "*software entropy*" and precisely what "*software entropy*" captures as a behavior of software. A lot of people learn about this concept throughout college or the workplace, but I feel that there isn't a clear enough conceptual. 

Misunderstanding "*software entropy*" often leads to the common misconception that there really isn't anything to do against "*software entropy*" and that by some magic, a software codebase will decay into an incredible mess littered with arcane logic. 

## What is Software Entropy? 

Google defines it as follows: "***Software entropy is a term used to describe the natural degradation of software systems over time.***" The problem is that it is not the binary of the software that is somehow bit-flipping as you don't touch it for a while.

It's the "*understanding*" of the abstractions that were written into the software and the logic used to compose the software that decays over time. Viewing it from that perspective frames the conversation of dealing with software entropy in a pragmatic way.

There are practical strategies that can combat the decay of software understanding.

## Complexity and Entropy

Borrowing from the concepts of "*accidental and essential complexity.*"Software entropy would be classified under the former. 

For example, the code that got the rocket to the moon dealt with essential complexity, such as the calculations and controls needed to navigate the rocket ship accurately, and accidental complexity, such as the coordination and maintenance of software development. "*Software entropy*" is of the latter kind.

I want to point out that "*software entropy*" often sits in between "*essential and accidental complexity.*" If you have the completely wrong abstractions and an orthogonal understanding of what software you need to build, then you are already off course. The situation worsens on the "*accidental*" or "*human*" side because now the developers have to communicate changes and rearchitect software. Both tasks which have incredible potential to accelerate decay.

The point is that software entropy should not be seen as a magical deterioration of software code. Looking at it that way, the solution becomes clearer. The solution really is to follow the practices set out to minimize accidental complexity.

After a project has hashed out the domain/essential complexity of the topic, there is already a suite of contextual best practices, whether it is a long-standing company or a newly-born start-up. The sad reality is that everyone hates following best practices because we forget the future is just about the horizon[^1].

To oversimplify and be tautological: "***good design + good code + good documentation = no software entropy.***"

<br/>

## Citations

Brooks, F.P. (1987). No Silver Bullet: Essence and Accidents of Software Engineering.

<br/>
---
[^1]: I've come to experience that this is a organizational culture issue.
