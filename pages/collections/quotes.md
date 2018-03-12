---
layout: archive
title: Παραθέσεις
teaser: '<a href="/contribute/">Μπορείτε να προσθέσετε περισσότερες παραθέσεις σύμφωνα με τις οδηγίες</a>'
header: no
permalink: /quotes/
show_meta: false
---

<div class="grid__wrapper">
  {% for post in site.quotes %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>
