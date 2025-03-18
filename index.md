---
categories:       blog
date:             2024-07-14
description:  >-
  a very informative and super special blog.
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  home
---

<div class="row justify-content-center">
    <div class="col-10" style="max-height: 400px">
        <img id="set-me" style="margin: auto;display: block; height: 100%;" src=""/>
    </div>
    <p class="mt-1 mb-0" style="text-align: center;"></p>
</div>

<script>
  async function findDiv() {
    const url = "{{ site.url }}/photos/" 
    const response = await fetch(url)
    const data = await response
    
    const html = await data.text()
    const parser = new DOMParser()
    const doc = parser.parseFromString(html, 'text/html')
    const div = doc.getElementById('1')
    
    const img = div.getAttribute('data-path')
    const imgElement = document.getElementById('set-me')
    imgElement.src = img
    
    const name = div.querySelector('a').innerHTML
    const num = div.getAttribute('data-max')
    const pString = `Photo #${num}: ${name}`
    const p = document.querySelector('p')
    p.innerHTML = pString
  }

  findDiv()
</script>



<!--# Explore Topics-->
<!---->
<!--<div class="card-group row-cols-4" style="gap: 0px">-->
<!---->
<!--<div class="cards" href="{{'/fun' | relative_url}}">-->
<!--<div class="col" style="height: 100%;">-->
<!--  <div class="card" style="width: 100%; height: 100%;">-->
<!--    <img src=" {{ 'assets/home/dad.jpg' | absolute_url}}" class="card-img-top" alt="...">-->
<!--      <div class="card-body">-->
<!--        <h5 class="card-title">Fun</h5>-->
<!--        <h6 class="card-subtitle mb-2 text-muted">entertainment+</h6>-->
<!--        <p class="card-text">Movies, games, comics, and other fun things in life.</p>-->
<!--        <a href="{{'/fun' | relative_url}}" class="stretched-link"></a>-->
<!--      </div>-->
<!--  </div>-->
<!--</div>-->
<!--</div>-->
<!---->
<!--<div class="cards">-->
<!--<div class="col" style="height: 100%;">-->
<!--  <div class="card" style="width: 100%; height: 100%;">-->
<!--    <img src="{{ 'assets/home/read.png' | absolute_url}}" class="card-img-top" alt="...">-->
<!--      <div class="card-body my-0">-->
<!--        <h5 class="card-title">Books</h5>-->
<!--        <h6 class="card-subtitle mb-2 text-muted">reading books</h6>-->
<!--        <p class="card-text">Summaries of the books I read along with commentary.</p>-->
<!--        <a href="{{'/books' | relative_url}}" class="stretched-link"></a>-->
<!--      </div>-->
<!--  </div>-->
<!--</div>-->
<!--</div>-->
<!---->
<!--<div class="cards">-->
<!--<div class="col" style="height: 100%;">-->
<!--  <div class="card" style="width: 100%; height: 100%;">-->
<!--      <img src="{{ 'assets/home/grow.png' | absolute_url }}" class="card-img-top" alt="...">-->
<!--      <div class="card-body">-->
<!--        <h5 class="card-title">Life</h5>-->
<!--        <h6 class="card-subtitle mb-2 text-muted">my growth stocks</h6>-->
<!--        <p class="card-text">A personal Q&A section for myself. A practice in being open and aware.</p>-->
<!--        <a href="{{'/life' | relative_url}}" class="stretched-link"></a>-->
<!--      </div>-->
<!--  </div>-->
<!--</div>-->
<!--</div>-->
<!---->
<!--<div class="cards">-->
<!--<div class="col" style="height: 100%;">-->
<!--  <div class="card" style="width: 100%; height: 100%;">-->
<!--      <img src="{{ 'assets/home/computer.jpg' | absolute_url}}" class="card-img-top" alt="...">-->
<!--      <div class="card-body">-->
<!--        <h5 class="card-title">Work</h5>-->
<!--        <h6 class="card-subtitle mb-2 text-muted">avg it experience</h6>-->
<!--        <p class="card-text">Things about computer science and the job.</p>-->
<!--        <a href="{{'/work' | relative_url}}" class="stretched-link"></a>-->
<!--      </div>-->
<!--  </div>-->
<!--</div>-->
<!--</div>-->
<!---->
<!--</div>-->
<!---->
<!-- 
## Recent Posts

{% assign all_content = site.work | concat: site.fun | concat: site.life | concat: site.books %}
{% assign sorted_content = all_content | sort: 'date' | reverse %}
{% assign recent_content = sorted_content | slice: 0, 5 %}

<ul style="list-style: none outside; padding: 0;">
{% for item in recent_content %}
    <li>  <a href="{{ item.url }}">{{ item.title }}</a>  
    </li>
{% endfor %}
</ul>
-->
