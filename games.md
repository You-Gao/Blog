---
date:             2024-07-14
description:  >-
  my attempt at answering "why play?"
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  games
permalink: /games/
---

<h1>Game Reviews</h1>

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote">
    <p> All are temporary worlds within the ordinary world.</p>
    </blockquote>
    <figcaption class="blockquote-footer" style="font-size: 18px;">
    Johan Huizinga,  <cite title="Source Title"> Homo Ludens: A Study of the Play-Element in Culture</cite>
    </figcaption>
</figure>


<div class="container-lg" style="padding: 0;">
{% assign previousYear = '' %}
{% assign previousMonth = '' %}
{% assign sorted = site.games | reverse %}
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
