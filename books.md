---
categories:       blog
date:             2024-07-14
description:  >-
  A list of all the books that have been reviewed by me.
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  Book Reviews
permalink: /books/
---

<h1>Book Reviews</h1>
<p>Here you will find all our book reviews.</p>

<ul>
  {% for post in site.books %}
    <li>
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
