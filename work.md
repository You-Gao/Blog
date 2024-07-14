---
categories:       blog
date:             2024-07-14
description:  >-
  Working in the world...
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  Work
permalink: /games/
---

<h1>Work</h1>
<p>Here you will find wealth.</p>

<ul>
  {% for post in site.work %}
    <li>
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
