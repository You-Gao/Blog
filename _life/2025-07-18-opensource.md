---
date:             2025-07-18
description:  >-
    Some open-source projects I use in my day.
title: >-
    cool open-source software
layout:           style
name: >-
    cool open-source software
---

# cool open-source software[^2]

> With every new shiny software constantly shoving AI down your throat, I thought it was about time to migrate off and find alternatives to mainstream "*enterprise free*" offerings. 
> <figcaption class="blockquote-footer">me</figcaption>

Is what I wanted to start off my blog saying, but the real and probably only good reason to do anything is simply because it is cool.

There just is a lot of very interesting, useful, and importantly **cool** open-source projects out there that you can download and use without pop-out ads about their new AI offerings. That isn't to imply they don't have AI, some of my examples use them to great purposes, just not in your face about it.

Without further a do, here are some cool open-source software.

## qutebrowser

<img src="https://qutebrowser.org/doc/img/hints.png"/>

[qutebrowser](https://qutebrowser.org/index.html) is a fun alternative to Chrome or any browser really. It is written using Python bindings and "*Qt*" which is an even greater beast of an open-source project that allows developers to write '*cross-platform apps*'and is pretty impressive in of itself.

Anyhow, qutebrowser is just fun to use. Keyboard based workflows in general are fun to use. Being able to have a quick interface for what you want to do is just good UX. Of course in many cases it is "*overkill*", akin to using a stenography keyboard to write a paper, but even in general cases it is pretty useful.

A small rabbit hole to dive down: [History of Web Engines](https://eylenburg.github.io/browser_engines.htm)

## Readest

[Readest](https://readest.com/) is an e-book pdf reader that I recently stumbled upon. I found it after being pretty miffed about the sheer, almost absurd, greed of AI companies that make "*TTS (Text To Speech)*" readers on IOS. The popular ones charge like **$10-$20** a month for a TTS reader. Isn't that crazy?

Now I can see how people make the argument that it follows the same cost model of ChatGPT right. But the end-to-end processing of a Vocoder + Spectogram model just does not that take much compute at all. It doesn't take that much at all because:

1. the "*context window*" is small, usually just the page
2. not 10B+ parameters in it
3. highly optimized for use
 
The point being, unless you are querying their own "*self-hosted*" AI models to generate audio for the text snippets, you are basically paying for your own compute. It's not like the models used by these services are "*novel*" or anything, they usually take a pre-trained model from [coqui](https://github.com/coqui-ai/TTS) and then modifying it.

### URL TO EPUB

Given that Readest can only run TTS on "*.epub*" formatted text, I wanted a way to input an URL and get out a valid "*.epub*" file so I can have TTS for any site. I was planning on writing my own web-based converter do so and learned a lot in the process. Like who knew "*.epub*" was just a zip file that contained XHTML and a standardized folder structure spec.

Anyhow some else already wrote a JS based version: [https://webpagetoepub.github.io/](https://webpagetoepub.github.io/)[^1].

## Joplin

[Joplin](https://joplinapp.org/) is my note-taking app. Surprisingly again it supports "*cross-platoform*" although this time using "*Electron*" for PC platforms and "*React Native*" for mobile. It is a simple but feature filled Note taking application and works as intended for most of my workflows.

The main competitor to this would be "*Obsidian*" and I although I do admit their "*Knowledge Graph*" feature is cool, none of it warrants me switching off Joplin for.

## komorebi

[komorebi](https://github.com/LGUG2Z/komorebi) is a tiling windows manager for Windows. I use "*i3*" for my windows manager on Linux, so it kind of made sense to have the same thing for my PC.

<br/>
---
[^1]: Interestingly, they used a Javascript module which is usually ran on Node.js, but can be bundled using webpack for web use.
[^2]: I ended up showcasing cross platform SDKs more than anything.



