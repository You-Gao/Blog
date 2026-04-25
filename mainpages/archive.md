---
categories:       blog
date:             2026-04-08
last_modified_at: 2026-04-08
description:  >-
    I finally have enough posts to archive
lang:             en
last_modified_at: 2024-07-14
layout:           style
title: >-
 Archive 
permalink: /archive/

---

{% assign posts = site.books | concat: site.fun | concat: site.life | concat: site.work %}
{% assign indexed = "" | split: "|" %}
{% for p in posts %}
  {% assign key = p.date | date: "%Y-%m-%d %H:%M:%S" %}
  {% assign entry = key | append: "||" | append: forloop.index0 %}
  {% assign indexed = indexed | push: entry %}
{% endfor %}

{% assign sorted = indexed | sort | reverse %}

{% assign previous_year = "" %}
{% for item in sorted %}
  {% assign parts = item | split: "||" %}
  {% assign idx = parts[1] | plus: 0 %}
  {% assign post = posts[idx] %}
  {% if post.hidden == true %}{% continue %}{% endif %}
<div class="container-lg bloglist">
  {% assign current_year = post.date | date: "%Y" %}
  {% if current_year != previous_year %}
    <h2>{{ current_year }}</h2>
    {% assign previous_year = current_year %}
  {% endif %}

  <div class="d-flex justify-content-between">
    <div class="d-flex align-items-center">
      <p class="mb-0 me-2 date">{{ post.date | date: "%b %d" }}</p>
      <a class="title" href="{{ post.url }}">{{ post.title | default: post.name }}</a>
    </div>
    <p class="mb-0 comment" style="font-size: 15px;align-self: center;">{{ post.comment }}</p>
  </div>
{% endfor %}
</div>
