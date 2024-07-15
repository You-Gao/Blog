---
categories:       blog
date:             2024-07-14
description:  >-
  A list of all the games that have been reviewed by me.
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  Game Reviews
permalink: /games/
---

<h1>Game Reviews</h1>
<p>Here you will find all my game reviews.</p>

<ul>
  {% for post in site.games %}
    <li>
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>