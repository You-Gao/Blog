---
categories:       blog
date:             2024-07-14
description:  >-
  Who I am and why I started this blog.
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  About Me
permalink: /about/
---

# Welcome to My Blog!

internal monologue about my life goes here

# Game Reviews

internal monologue about why I wanted to write reviews

link: [game-reviews]({{ '/game-reviews/' | relative_url }})

# Book Reviews

internal monologue about why I wanted to write reviews
 
link: [book-reviews](https://www.yougao.dev/Blog/book-reviews/)

<h1>Game Reviews</h1>
<p>Here you will find all our game reviews.</p>

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
