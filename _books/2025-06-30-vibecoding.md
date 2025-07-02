---
date: 2025-07-01
description:  >-
    Is it really the "future"?
title: >-
    Beyond Vibe Coding  
layout: style
name: >-
    Beyond Vibe Coding
---


# THE Vibe Coding Book

> "The modern software developer has become a poet, their audience---AI"
> <figcaption class="blockquote-footer">me</figcaption>

I have come around to reading a book on "*vibe-coding.*" I was actually scrolling through *IG reels* when I found a meme about of a average web-developer heralding this book in the future. I also saw it was on *O'Reilly*[^1] which my university has free access to.

So I gave it a shot and read through *Beyond Vibe Coding.* The book and author is surprisingly lucid on the topic of "*AI Coding*" and even moreso surprising that the book itself was not vibe-coded---atleast in some chapters[^2].

The book itself touches on the "*vibe-coding vs. AI assistance,*" the **current** limitations of AI, and some practical tips. It is currently still *WIP*, so it's a short read, so here are my thoughts on each chapter.

## Ch 1: Vibe Coding

There is a difference between "*vibe-coding*" and having it assist you. "*Vibe-coding*" is when you have a hazy outline of what you want the computer to do, but ave a good understanding of how you want it to "*behave.*" That is, you are an abstraction above simply "*speaking*" to the computer, you just want it to "*do*" what you want it to.

"*AI assisted*" coding then is helping you express what the computer should be thinking not simply its "*behavior.*" That is, you prioritize how the computer is "*computing*" its outputs rather than just behaviourally verifying it.

### Programming with Intent

This section irked me, given the preceding discussion of "*vibe-coding*" vs. "*AI assisted.*" Osmani claims that the two are distinct on the basis that vibe-coding is more "*intent*" based then ai-assisted programming.

I, frankly, think this is an incorrect separating factor. Normal programming and vibe-coding both express intent; One in code syntax and the other in English. The real distinction is how much can you assume the program you interact with knows to interpret your syntax. Hence the real distinction is "*declarative*" vs. "*imperative.*"

### Domain Specific Languages 

These topics weren't in the book, but I wanted to reflect on it without making a whole nother blog.

*Domain Specific Languages* are declarative languages whose syntax is used to express "*intent*" in a very specfic "*domain.*" Because of that property, they are highly effective and useful for doing specific operations, in many ways similar to English.

*HCL* (Hashicorp Configuration Language), *SQL* (Structured Query Language), *YAML* (Yet Another Markup Language), and friends are examples of DSLs. These languages are powerful and people use them everywhere because they are simple. Ultimately though, what an AI does is different then "*imperative*" and even "*declarative*" coding, which is why I'm skeptical.

### Transpilation

Consequently, many people treat "*AI*" as a English to Code transpiler. I think that's a wrong view. Even though you can input English and get whatever syntax out, it still isn't doing what a typical "*transpiler*" does.

The mathematical idea of a formal translator has been shot down by this image:

<img src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210407173848/12312.png"/>

Secondly, even if you say the code generation is just a declarative transpiler, it doesn't maintain intent "*isomorphically*" to whatever language you wanted it to generate.

## CH 3-4: 70%/30%

### 70% Problem

AI is still not a "*silver bullet.*" It has not solved the problem of "*essential complexity*", rather help along with "*accidental complexity*" and in many cases even contributing to it. The "*70% problem*" here the idea that Ai can you 70% of the way, but after a critical point, any more usage simply fails.

The common scenario of vibe-coding is that it will easily generate an *MVP* for you, but as features start to add-up and many more chats are spawned, it will ultiamtely collapse. This phenomena is largely due to the fact that the AI might understand your intent, but not the "*10,000 ft*" view of what you're trying to express.

### Diagram as Code

The solution to the above problem and frankly when there will be no more human software engineers is when AI can take "*Diagram as Code.*"

You see the same thing in the "*No-code*" space for web design, where all you need is a web designer constructing UI interfaces related to UX principles. Traditionally, you would have a web developer build out the UI because under the UI is a web-browser that intakes syntax. 

So all the jobs left are the ones that do "*conceptual*" work, a layer above what we would call "*developer*" work; Essentially, they only care about if the app is functioning how its supposed to now how it is functioning.

Diagram as Code is that, but for "*system design.*" The idea is all you would need is a software architect that understands how to wire everything up conceptually; Have them draw a diagram of that system and pass it into to some AI tool that writes it all, deploys it, and tacks on all the extras you want. Ultimately, a CEO could describe a business function that requires IT and have the AI build out the system.

### The 30%

Given the previous chapter, it is no surpise that the author then advocates to learn more of the "*conceptual*" ways that abstract the underlying software developer, in other words: **become a designer.**

Funnily enough, I have read 3/4 books the author recommends:

* [*The Fifth Discipline*](https://blog.yougao.dev/books/fifth-discipline/)
* *Thinking in Systems: A Primer*
* *Fundamentals of Software Architecture*
* *Head First Software Architecture*

There is a disclaimer though, and a rather lucid one. Which is the fact that having well-founded and solid software developer skills will never at all hurt in the long-run. It would be incredibly easy to offload "*critical thinking*" to an AI, but incredibly hurtful especially in your early career to do so.

It's not like debugging as skill is going to go away; I, for one think it will now be the most important skill. And to do debugging you actually need to know the syntax and a conceptual understanding of the language. So yes, AI is coming, but I still believe it is a *tad-bit* overhyped.

> "You can teach a physicist finance, but you can't teach a finance person physics."
> <figcaption class="blockquote-footer">Ben Simons</figcaption>

<br/>
---
[^1]: Not the auto parts company.
[^2]: You can tell because there are still very human typos throughout, unless that is to trick the reader.
