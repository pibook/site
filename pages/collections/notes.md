---
layout: archive
permalink: "/notes/"
show_meta: false
header: no
---

<div class="grid__wrapper">
  {% for post in site.notes %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>
