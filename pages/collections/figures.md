---
layout: archive
title: Εικόνες 
permalink: /figures/
show_meta: false
header: no
---

<div class="grid__wrapper">
  {% for item in site.figure %}
    {% include gallery-item.html type="grid" %}
  {% endfor %}
</div>
