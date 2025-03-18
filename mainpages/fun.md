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
<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote">
    <p> All are temporary worlds within the ordinary world.</p>
    </blockquote>
    <figcaption class="blockquote-footer" style="font-size: 18px;">
    Johan Huizinga,  <cite title="Source Title"> Homo Ludens: A Study of the Play-Element in Culture</cite>
    </figcaption>
</figure>


<div class="container-lg" style="padding: 0;">
    {% assign posts = site.fun | reverse %}
    {% assign previous_year = "" %}

    {% for post in posts %}
      {% assign current_year = post.date | date: "%Y" %}
      
      {% if current_year != previous_year %}
        <h2>{{ current_year }}</h2>
        {% assign previous_year = current_year %}
      {% endif %}

      <div class="d-flex justify-content-between">
        <div class="d-flex align-items-center">
            <p class="mb-0 me-1" style="font-size: 15px; width: 50px;">{{ post.date | date: "%b %d" }}</p>
            <a href="{{ post.url }}">{{ post.name }}</a>
        </div>
            <p class="mb-0">{{ post.comment }}</p>
      </div>
    {% endfor %}

</div>
