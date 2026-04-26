---
date:             2025-07-18
last_modified_at: 2026-04-08
tags:             [cs, open-source]
title:            cool open-source software
name:             cool open-source software
layout:           style
description:  >-
    Some open-source projects I use in my day.
---

# cool open-source software[^2]

There are a lot of interesting, useful, and importantly **cool** open-source projects out there.

## qutebrowser

![qutebroweser](https://qutebrowser.org/doc/img/hints.png)

[qutebrowser](https://qutebrowser.org/index.html) is a fun alternative to Chrome or any browser. It is written using Python and "*Qt*", which is an open-source project allowing developers to write '*cross-platform apps*'.

Anyhow, qutebrowser is fun to use. Keyboard-based workflows, in general, are fun to use. Having a quick interface for what you want to do is good UX. It can be "*overkill*", akin to using a stenography keyboard to write a paper, but even in general cases, it is useful.

A small rabbit hole to go down: [History of Web Engines](https://eylenburg.github.io/browser_engines.htm)

## Readest

[Readest](https://readest.com/) is an e-book PDF reader I recently stumbled upon. I found it after being pretty miffed about the sheer, almost absurd, greed of AI companies making "*TTS (Text To Speech)*" readers on iOS. The popular ones charge like **$10-$20** a month for a TTS reader. Isn't the price crazy?

The end-to-end processing of a Vocoder + Spectrogram model does not take a lot of compute. It doesn't take much because:

1. the "*context window*" is small
2. not 10B+ parameters in it
3. highly optimized for use
 
Unless you are querying their own "*self-hosted*" AI models to generate audio for the text snippets, you are basically paying for your own compute. It's not like the models used by these services are "*novel*" or anything. They usually take a pretrained model from [coqui](https://github.com/coqui-ai/TTS) and then modify it.

### URL TO EPUB

Readest can only run TTS on "*.epub*" formatted text. I needed a way to input a URL and get out a valid "*.epub*" file so I can have TTS for any site. I was planning on writing my own web-based converter, so I learned a lot in the process. Like, who knew "*.epub*" was a zip file containing XHTML and a standardized folder structure spec.

Someone else already wrote a JS-based version: [https://webpagetoepub.github.io/](https://webpagetoepub.github.io/)[^1].

## Joplin

[Joplin](https://joplinapp.org/) is my note-taking app. Surprisingly, again it supports "*cross-platform*" although this time using "*Electron*" for PC platforms and "*React Native*" for mobile. It is a simple and feature-filled note-taking application.

The main competitor to this would be "*Obsidian*", and although I do admit their "*Knowledge Graph*" feature is cool, none of it warrants me switching off Joplin for.

## komorebi

[komorebi](https://github.com/LGUG2Z/komorebi) is a tiling window manager for Windows. I use "*i3*" for my window manager on Linux, so it kind of made sense to have the same thing for my PC.

---
[^1]: Interestingly, they used a JavaScript module usually ran on Node.js, but can be bundled using WebPack.
[^2]: I ended up showcasing cross-platform SDKs more than anything.
