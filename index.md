---
categories:       blog
date:             2024-07-14
description:  >-
  abandon all hope, ye who enter here.
lang:             en
last_modified_at: 2024-07-14
layout:           style
tags:
title: >-
  home
---

<section class="row pt-1">
    <div class="col-md-6 col-12" >
        <div style="max-height: 200px; overflow-y: auto; overflow-x: auto;">
            <h3 style="margin-top:0px;margin-bottom:0px;">Posts for {{ 'now' | date: '%B %Y' }}:</h3>
            <ul style="list-style:cjk-ideographic;">
                {% assign all_posts = site.books | concat: site.fun | concat: site.life | concat: site.work %}
                {% assign current_month = 'now' | date: '%m' %}
                {% assign current_year = 'now' | date: '%Y' %}
                {% for post in all_posts %}
                {% assign post_month = post.date | date: '%m' %}
                {% assign post_year = post.date | date: '%Y' %}
                {% if post_month == current_month and post_year == current_year and post.hidden != true %}
                <li><a href="{{ site.url }}{{ post.url }}">{{ post.name }}</a></li>
                {% endif %}
                {% endfor %}
            </ul>
        </div>
        <h3 id="qotm" style="margin-bottom:5px;">Quote of the Month:</h3>
        <blockquote>"Do nothing, say nothing, and be nothing, and you'll never be criticized."           <figcaption class="blockquote-footer"> 
               Elbert Hubbard
            </figcaption>
        </blockquote>
        <a id="link" href="/quotes">old quotes</a>
    </div>
    <div id="photo-homepage" class="photo-container col-12 col-md-6">
        <img id="set-me" src=""/>
        <p class="mt-1 mb-0" style="text-align: center;"></p>
    </div>
</section>

<script>
async function findDiv() {
    const url = "{{ site.baseurl }}/photos/" 
    const response = await fetch(url)

    const html = await response.text()
    const parser = new DOMParser()
    const doc = parser.parseFromString(html, 'text/html')
    const div = doc.getElementById('1') /* tagged in liquid */

    const img = div.getAttribute('data-path')
    const imgElement = document.getElementById('set-me')
    imgElement.src = img

    const name = div.querySelector('a').innerHTML /* always selects the 1st a */
    const num = div.getAttribute('data-max')
    const pString = `img #${num}: ${name}`
    const p = document.querySelector('p')
    p.innerHTML = `<a href="{{ site.url }}/photos/${name.replace(/ /g, '-')}">${pString}</a>`;
}

findDiv()
</script>
