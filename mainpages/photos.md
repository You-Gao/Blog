---
date:             2025-03-17
description:  >-
  sharing pictures of my life
layout:           style
tags:
title: >-
  photos
permalink: /photos/
---
<figure class="container-lg" >
    <blockquote class="blockquote">
    <p>"To collect photographs is to collect the world."</p>
    <figcaption class="blockquote-footer" >
    Susan Sontag, <cite title="Source Title">On Photography</cite>
    </figcaption>
    </blockquote>
</figure>

<div class="container-lg bloglist" >
    {% assign posts = site.photos | reverse %}
    {% assign previous_year = "" %}
    {% assign count = 1 %}
    {% assign total_posts = site.photos | size %}
    {% assign max_index = total_posts | minus: 1 %}
    {% for post in posts %}
      {% if post.hidden == true %}
        {% continue %}
      {% endif %}
      {% assign current_year = post.date | date: "%Y" %}
      {% if current_year != previous_year %}
        <h2>{{ current_year }}</h2>
        {% assign previous_year = current_year %}
      {% endif %}
      <div id = {{ count }} data-max={{ max_index }} data-path="{{ post.img_location }}" class="d-flex justify-content-between">
        <div class="d-flex align-items-center">
            <p class="mb-0 me-2 date">{{ post.date | date: "%b %d" }}</p>
            <a class="title" href="{{ post.url }}">{{ post.name }}</a>
        </div>
            <p class="mb-0 comment" style="font-size: 15px;align-self: center;">{{ post.comment }}</p>
      </div>
      {% assign count = count | plus: 1 %}
    {% endfor %}
</div>

