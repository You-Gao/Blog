---
date:             2024-08-15
last_modified_at: 2026-04-08
tags:             [cs, design, entropy]
title:            Software Entropy and Silver Bullets
name:             Software Entropy and Silver Bullets
layout:           style
description:  >-
    Understanding what software entropy is.
---

# Software Entropy 

I wanted to write this blog to define the necessary scope of "*software entropy*". A lot of people learn about this concept throughout college or the workplace, yet it remains conceptually vague. Misunderstanding software entropy often leads to a sense of hopelessness against it. By some magic, a software codebase will decay into an incredible mess littered with arcane logic. 

## What is Software Entropy? 

Google defines it as follows: "*Software entropy is a term used to describe the natural degradation of software systems over time.*" The problem is, software entropy is not the bit-flipping of code as you don't touch it for a while. It's the "*understanding*" of the abstractions being lost to time. Viewing it from an abstraction framing allows people to deal with software entropy in a pragmatic way.

## Complexity and Entropy

Borrowing from the concepts of "*accidental*" and "*essential*" complexity. Software entropy would be classified under the former. For example, the code that got the rocket to the moon dealt with essential complexity in the calculations and controls needed to navigate the rocket ship accurately. The developers dealt with accidental complexity in the coordination and maintenance of software development.

Software entropy should not be seen as a magical deterioration of code. Looking at it this way, the solution becomes clearer. The solution is to follow existing practices to minimize accidental complexity. There is a preexisting suite of contextual best practices. Sadly, everyone hates following best practices.

To oversimplify and be tautological: "*good design + good code + good documentation = no software entropy.*"

## Citations

Brooks, F.P. (1987). No Silver Bullet: Essence and Accidents of Software Engineering.
