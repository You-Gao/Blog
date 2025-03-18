---
date:             2025-03-17
description:  >-
  working in the world...
layout:           style
tags:
title: >-
  work
permalink: /photos/
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
    {% assign posts = site.photos | reverse %}
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
            <p class="mb-0">some review text here...</p>
      </div>
    {% endfor %}

</div>

