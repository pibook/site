---
title: "Συλλογή Εικόνων"
layout: page-fullwidth
permalink: "/gallery/pre/"
show_meta: false
header:
    image_fullwidth: "header5.jpg"
---

<ul class="photo-gallery">
  {% for image in site.gallery %}
    <li><img src="{{ image.image_url }}" alt="{{ image.title}}"/></li>
  {% endfor %}
</ul>
