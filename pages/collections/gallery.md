---
layout: archive
title: Συλλογή Εικόνων
teaser: '<a href="/contribute/">Μπορείτε να προσθέσετε περισσότερες εικόνες σύμφωνα με τις οδηγίες</a>'
permalink: /gallery/
show_meta: false
header: no
---

<div class="grid__wrapper">
  {% for item in site.gallery %}
    {% include gallery-item.html type="grid" %}
  {% endfor %}
</div>
