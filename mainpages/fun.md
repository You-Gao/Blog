---
date:             2024-07-14
description:  >-
  entertaining stuff that i want to comment on
lang:             en
last_modified_at: 2025-03-17
layout:           style
tags:
title: >-
  games
permalink: /fun/
---
<figure class="container-lg">
    <blockquote class="blockquote">
    <p>"The more stuff you love the happier you will be."</p>
    <figcaption class="blockquote-footer"> 
    Ross Gay,  <cite title="Source Title"> The Book of Delights</cite>
    </figcaption>
    </blockquote>
</figure>


<div class="container-lg bloglist"> 
    {% assign posts = site.fun | reverse %}
    {% assign previous_year = "" %}
      {% if post.hidden == true %}
        {% continue %}
      {% endif %}
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
