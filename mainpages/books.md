---
categories:       blog
date:             2024-07-14
description:  >-
  the books i read for fun
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  books
permalink: /books/
---
<figure class="container-lg">
    <blockquote class="blockquote">
    <p>"The reading of good books is like a conversation with the best minds of past centuries."</p>
    <figcaption class="blockquote-footer">
    Rene Descartes, <cite title="Source Title">Meditations on First Philosophy</cite>
    </figcaption>
    </blockquote>
</figure>


<div class="container-lg bloglist">
    {% assign posts = site.books | reverse %}
    {% assign previous_year = "" %}
    {% for post in posts %}
      {% assign current_year = post.date | date: "%Y" %}
      {% if current_year != previous_year %}
        <h2>{{ current_year }}</h2>
        {% assign previous_year = current_year %}
      {% endif %}
      <div class="d-flex justify-content-between">
        <div class="d-flex align-items-center">
            <p class="mb-0 me-2 date">{{ post.date | date: "%b %d" }}</p>
            <a class="title" href="{{ post.url }}">{{ post.name }}</a>
        </div>
            <p class="mb-0 comment" style="font-size: 15px;align-self: center;">{{ post.comment }}</p>
      </div>
     {% endfor %}
</div>

