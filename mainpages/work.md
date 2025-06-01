---
categories:       blog
date:             2024-07-14
description:  >-
  working in the world...
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  work
permalink: /work/
---
<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote">
    <p> We do not learn from experience... we learn from reflecting on experience.</p>
    </blockquote>
    <figcaption class="blockquote-footer" style="font-size: 18px;">
    John Dewey, <cite title="Source Title">How We Think</cite>
    </figcaption>
</figure>


<div class="container-lg" style="padding: 0;">
    {% assign posts = site.work | reverse %}
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

