---
layout: archive
title: Γκαλερί Εικόνων
permalink: /gallery/
show_meta: false
header: no
---

<div class="grid__wrapper">
  {% for item in site.gallery %}
    {% include gallery-item.html type="grid" %}
  {% endfor %}
</div>
