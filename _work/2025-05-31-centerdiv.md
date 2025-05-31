---
date:             2025-05-31
description:  >-
    pro web-dev intern
layout:           post
title: >-
    How To Center a <div>
layout:           style
name: >-
    4-5 Ways to Center a <div>
---

# 4-5 Ways to Center a <div>

I thought it would be a fun exercise, so here it is.

## 'position: absolute' + 'transform' + 'top/left: 50%'

- {position: absolute} tells the browser to always display a browser element at a fixed location.
- {top:50%; left:50%;} moves the element to the center-middle of the browser.
- {transform: translate(50%, 50%)} finishes this off by moving the element itself by it's own bounds to "*truly*" center itself.

## 'display: flex' + 'justify-content' + 'width: 100%'

- {display: flex} set the div to be a flex box.
- {width: 100%} makes the div span the entire browser.
- {justify-content: center} tells the flex-box to "auto-margin" the elements middle.

## 'width' + 'margin: auto'

- {width < 100%} set the width to less then 100%
- {margin: auto} margin-left and margin-right will equally fill in space

## display: grid + grid-template-columns

{display: grid} is another way to structure html elements.

{grid-template-columns} define the grid structure, but people typically just use bootstrap defined col classes. 

{text-align} aligns text to the middle of {<p>}.

{place-items} also works if you want to set elements inside a grid child.

## javascript

You can use a script to set it, but functionally it will be the same as ##1.

```
<script>
function SetXY() {
    var element = document.GetElementbyId("centerme");
    var x = window.innerWidth / 2;
    var y = window.innerHeight / 2;

    element.style.left = x + "px";
    element.style.top = y + "px";
    element.style.transform = "translate(-50%, -50%)";
}

window.addEventListener("load", SetXY);
</script>

<div id="centerme"></div>

```
