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

<h1>Book Reviews</h1>

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote">
    <p>The reading of good books is like a conversation with the best minds of past centuries.</p>
    </blockquote>
    <figcaption class="blockquote-footer" style="font-size: 18px;">
    Rene Descartes, <cite title="Source Title">Meditations on First Philosophy</cite>
    </figcaption>
</figure>

<div class="container-lg" style="padding: 0;">
{% assign previousYear = '' %}
{% assign previousMonth = '' %}
{% assign sorted = site.books | reverse %}
{% for post in sorted %}
  {% assign currentYear = post.date | date: '%Y' %}
  {% assign currentMonth = post.date | date: '%B' %}

  {% if previousYear != currentYear and previousYear != ''  %}
    {% if previousMonth != '' %}
      </ul>
      </div>
      {% endif %}
    </div>
    {% assign previousYear = currentYear %}
    {% assign previousMonth = '' %}
    <h2>{{ currentYear }}</h2>
    <div class="row">
  {% elsif previousYear != currentYear and previousYear == '' %}
    {% assign previousYear = currentYear %}
    {% assign previousMonth = '' %}
    <h2 class="my-0">{{ currentYear }}</h2>
    <div class="row">
  {% endif %}
  
  {% if previousMonth != currentMonth and previousMonth != '' %}
    </ul>
    </div>
    {% assign previousMonth = currentMonth %}
    <div class="col-12 col-md-4">
    <h3 class="my-2">{{ currentMonth }}:</h3>
    <ul style="list-style-type: '- ';">
    
  {% elsif previousMonth != currentMonth and previousMonth == '' %}
    {% assign previousMonth = currentMonth %}
    <div class="col-12 col-md-4">
    <h3 class="my-2">{{ currentMonth }}:</h3>
    <ul style="list-style-type: '- ';">
  {% endif %}
  
  <li><a href="{{ post.url | prepend: site.baseurl }}" style="font-size: 20px">{{ post.name }}</a></li>
  {% if forloop.last %}
    {% if previousMonth != '' %}
    </ul>
    </div>
    </div> <!-- Close the last column -->
    {% endif %}
  {% endif %}
{% endfor %}
</div>
