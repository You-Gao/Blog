---
date:             2024-07-14
description:  >-
  A list of all the games that have been reviewed by me, organized by year and month.
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  Game Reviews
permalink: /games/
---

<h1>Game Reviews</h1>

<div class="container">
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
    <div class="row row-cols-4">
  {% elsif previousYear != currentYear and previousYear == '' %}
    {% assign previousYear = currentYear %}
    {% assign previousMonth = '' %}
    <h2>{{ currentYear }}</h2>
    <div class="row row-cols-4">
  {% endif %}
  
  {% if previousMonth != currentMonth and previousMonth != '' %}
    </ul>
    </div>
    {% assign previousMonth = currentMonth %}
    <div class="col">
    <h3>{{ currentMonth }}:</h3>
    <ul>
    
  {% elsif previousMonth != currentMonth and previousMonth == '' %}
    {% assign previousMonth = currentMonth %}
    <div class="col">
    <h3>{{ currentMonth }}:</h3>
    <ul>
  {% endif %}
  
  <li><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></li>
  {% if forloop.last %}
    {% if previousMonth != '' %}
    </ul>
    </div>
    </div> <!-- Close the last column -->
    {% endif %}
  {% endif %}
{% endfor %}
</div>