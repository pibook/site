---
layout: archive
title: "Μοτίβα"
teaser: '<a href="/contribute/">Μπορείτε να προσθέσετε περισσότερα μοτίβα σύμφωνα με τις οδηγίες</a>'
permalink: "/remix/"
show_meta: false
header: no
---

<div class="grid__wrapper">
  {% for post in site.remix %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>
