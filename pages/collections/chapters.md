---
layout: archive 
title: Κεφάλαια του βιβλίου
show_meta: false
permalink: "/chapters"
header: no
---

<div class="grid__wrapper">
  {% for item in site.chapter %}
      {% include gallery-item.html type="grid" %}
  {% endfor %}
</div>

