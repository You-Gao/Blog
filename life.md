---
categories:       blog
date:             2024-07-14
description:  >-
  the thoughts i hope have originality
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  life
permalink: /life/
---

<h1>Life</h1>

<figure class="container-lg" style="padding: 0;">
    <blockquote class="blockquote" style="font-size: 21px;">
    <p>Today you are You, that is truer than true. There is no one alive who is Youer than You.</p>
    </blockquote>
    <figcaption class="blockquote-footer" style="font-size: 14px;">
    Dr. Seuss, <cite title="Source Title">Happy Birthday to You!</cite>
    </figcaption>
</figure>

<div class="container-lg" style="padding: 0;">
{% assign previousYear = '' %}
{% assign previousMonth = '' %}
{% assign sorted = site.life | reverse %}
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
