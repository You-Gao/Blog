---
date:             2025-03-13
description:  >-
    my attempt at finally fully understanding these concepts
layout:           post
title: >-
    async/parallel
layout:           style
name: >-
    async/parallel
---


# async parallel

No one really teaches programming within an async parallel frame. The problem is that most "*good*" applications or services are event-driven. That is because they are long-lasting and should not be a program just running a while-loop. The further problem is that it's a pretty amorphous topic with vague definitions, etc. Even worse, each language implements it differently, from coroutines to thread pools and beyond.

I made this post not to talk about it because I am definitely not qualified. I made it as a meta-post of resources for understanding async and parallel behavior of programs. It's a collection of rabbit holes, other blog posts, and documentation into understanding how to use this coding paradigm *rightish*[^2].

## async

Async is difficult to understand because frameworks provide abstractions for it. The least productive way to think about it is hardware interrupts, so the best you can do is point to the kernel syscalls and say it allows for async.

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

<br/>
---
[^1]: It is hard to wrap your head around how the kernel synchronizes and delegates tasks to different cores to achieve multi-threading, though.
[^2]: I will admit that I have used Python's multiprocessing to make network requests instead of aiohttp.
