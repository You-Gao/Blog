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

<h1>Work</h1>

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 22px;">
    <p>We do not learn from experience... we learn from reflecting on experience.</p>
    </blockquote>
    <figcaption class="blockquote-footer" style="font-size: 14px;">
    John Dewey, <cite title="Source Title">How We Think</cite>
    </figcaption>
</figure>

<div class="container-lg" style="padding: 0;">
{% assign previousYear = '' %}
{% assign previousMonth = '' %}
{% assign sorted = site.work | reverse %}
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
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
    <h3 class="my-2">{{ currentMonth }}:</h3>
    <ul style="list-style-type: '- ';">
    
  {% elsif previousMonth != currentMonth and previousMonth == '' %}
    {% assign previousMonth = currentMonth %}
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
    <h3 class="my-2">{{ currentMonth }}:</h3>
    <ul style="list-style-type: '- ';">
  {% endif %}
  
  <li><a href="{{ post.url | prepend: site.baseurl }}">{{ post.name }}</a></li>
  {% if forloop.last %}
    {% if previousMonth != '' %}
    </ul>
    </div>
    </div> <!-- Close the last column -->
    {% endif %}
  {% endif %}
{% endfor %}
</div>
