---
date:             2025-07-01
last_modified_at: 2026-04-18
tags:             [vibe-coding, cs]
title:            Beyond Vibe Coding  
name:             Beyond Vibe Coding
layout: style
description:  >-
    Is it really the "future"?

---

# THE Vibe Coding Book

I have come around to reading a book on "*vibe-coding.*" I was mid doom scroll when I found a meme depicting a developer heralding this book. I then saw it was on *O'Reilly*[^1], which my university has free access to.

So I gave it a shot and read through *Beyond Vibe Coding*. The book is surprisingly lucid on the topic of "*AI Coding*" and the book doesn't seem to be vibe-coded---at least in some chapters[^2].

The book touches on the "*vibe-coding*" vs. "*AI assistance*" distinction, the current limitations of AI, and practical tips regarding usage. It is currently still "*WIP*", so it's a short read. The following are my thoughts on each chapter.

## Ch 1: Vibe Coding

There is a difference between "*vibe-coding*" and having it assist you. "*Vibe-coding*" is when you have a hazy outline of what you want the computer to do, but have a good understanding of how you want it to "*behave*". That is, you are an abstraction above "*speaking*" to the computer, you want it to "*do*" what you want it to. Another rephrasal is, you know why you need the computer and don't know how to make it work.

"*AI-assisted*" coding is helping you express how the computer should be "*behaving*".

### Programming with Intent

This section irked me. Osmani claims there is a distinction to be made based on intent. Vibe-coding is more "*intent*" driven than AI-assisted programming. 

Intent is an incorrect separating factor. AI-assisted programming and vibe-coding both express intent; On is in code syntax and the other in English. The real distinction is how much you can assume the program you interact with knows to interpret your syntax. Hence, the real distinction is "*declarative*" vs. "*imperative*".

### Domain Specific Languages 

This topic wasn't in the book, but I wanted to write about it without making a whole other blog.

"*Domain Specific Languages*" are declarative languages whose syntax is used to express "*intent*" in a specific "*domain*". Because of that property, they are highly effective and useful for doing operations, in many ways similar to English.

"*HCL*" (HashiCorp Configuration Language), "*SQL*" (Structured Query Language), and "*YAML*" (Yet Another Markup Language) are examples of DSLs. These languages are powerful and usable because they are simple. I foresee DSLs becoming popular because AI's can use them easier. 

### Transpilation

Many people treat "*AI*" as an English-to-code transpiler. That's a wrong position to hold. Even though you can input English and get whatever syntax out, it doesn't do what a typical "*transpiler*" does.

The mathematical idea of a formal translator has been shot down by this image:

![translation servers](https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210407173848/12312.png)

Secondly, even if you say the code generation is a declarative transpiler, it doesn't maintain intent "*isomorphically*" to whatever language you wanted it to generate.

## CH 3-4: 70%/30%

### 70% Problem

AI is not a "*silver bullet.*" It has not solved the problem of "*essential complexity*", rather helps with "*accidental complexity*" and in many cases even contributes to it. The "*70% problem*" is the idea that AI can get you 70% of the way, but after a critical point, any more usage simply fails.

The common scenario of vibe-coding is "*MVP*" generation. However, as features start to add up and more chats are spawned, it will ultimately collapse. This phenomenon is due to AI's inability to understand intent in the single file alongside the "*10,000 ft*" view of what you're trying to express.

### Diagram as Code

The solution to the above problem, and frankly, when there will be no more human software engineers, is when AI can take "*Diagram as Code*".

The same thing exists in the "*No-code*" space for web design, where all you need is a web designer constructing interfaces using design principles. Traditionally, you would have a web developer build out the UI because under the UI is a web browser that intakes HTML/CSS/JS.

All the jobs left are the ones doing "*conceptual*" work. A layer above what we would call "*developer*" work. Essentially, they focus on if the app is functioning how it's supposed to, not how it is functioning.

Diagrams have been the best syntax for communicating architectural insight in "*system design*". The only role a business would hire for is a software architect who understands how to wire everything up conceptually. Then have them draw a diagram of the system and pass it into an AI tool to run the implementation. That is, until a CEO could describe a business function and have the AI build out the system.

### The 30%

It is no surprise the author advocates for learning "*conceptual*" skills instead of software development. In other words: "*become a designer*".

Funnily enough, I have read 3/4 of the books the author recommends:

* [*The Fifth Discipline*](https://blog.yougao.dev/books/fifth-discipline/)
* *Thinking in Systems: A Primer*
* *Fundamentals of Software Architecture*
* *Head First Software Architecture*

Though I have a disclaimer. The fact is, having well-founded and solid software developer skills will never hurt. It would be incredibly easy to offload "*critical thinking*" to an AI, but incredibly hurtful, especially in your early career.

It's not like debugging as a skill is going to go away. I, for one, think it will be the most important skill. And to do debugging, you actually need to know the syntax and what is "*under the hood*". Yes, AI is coming, but I believe it is a "*tad-bit*" overhyped.

> "You can teach a physicist finance, but you can't teach a finance person physics."
> {% include figcaption.html caption="Jim Simons" %}

---
[^1]: Not the auto parts company.
[^2]: You can tell because there are human typos throughout, unless that is to trick the reader.
