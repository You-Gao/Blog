---
date:             2025-03-13
last_modified_at: 2026-04-08
tags:             [cs, tips]
title:            async/parallel
name:             async/parallel
layout:           style
description:  >-
    My attempt at finally fully understanding async and parallel.
---

# async parallel

No one teaches programming within an async parallel frame. Which is a problem because most "*good*" applications or services use async/parallel concepts. The further problem is how amorphous the topic is with vague definitions, etc. Even worse, each language implements it differently.

I made this post as a meta-post of resources for understanding async and parallel behavior of programs. It's a collection of rabbit holes, other blog posts, and documentation for understanding how to use this coding paradigm.

## async

Async is difficult to understand because languages provide different abstractions for it. At the base level, it is hardware interrupts. 

- [Nonblocking IO/Epoll](https://eklitzke.org/blocking-io-nonblocking-io-and-epoll)
- [Futures/Promises Example](https://github.com/tsoding/c3fut)
- [Python Coroutine Explanation](https://snarky.ca/how-the-heck-does-async-await-work-in-python-3-5/)
- [Node.js Repo](https://github.com/nodejs/node/tree/main/src)

## parallel

It's generally easy to understand the idea of multi-threading [^1], even to the point of out-of-order execution black magic, but it is nice to have some resources to look at for reference.

- [SIMD Wikipage](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)
- [Out-of-Order Execution Wikipage](https://en.wikipedia.org/wiki/Out-of-order_execution)
- [MapReduce Wikipage](https://en.wikipedia.org/wiki/MapReduce)
- Insert pthreads Page

---
[^1]: It is hard to wrap your head around how the kernel synchronizes and delegates tasks to different cores to achieve multithreading.
