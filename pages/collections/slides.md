---
layout: archive 
title: "Διαφάνειες"
subheadline: ""
show_meta: false
teaser: ""
permalink: "/slides"
header: no
---

{% assign chapters = "Πρόλογος,Εισαγωγή,Ορισμός,Μέθοδος,Αρχέτυπα,Εργαλεία και Τεχνικές,Μοντέλα,Σύνθεση,Μορφές,Τεχνολογία" | split:"," %}

## Θεματικές παρουσιάσεις

<div class="grid__wrapper">
  {% for item in site.slides %}
    {% unless chapters contains item.title %}
      {% include gallery-item.html type="grid" %}
    {% endunless %}
  {% endfor %}
</div>

<br>

## Κεφάλαια του βιβλίου

<div class="grid__wrapper">
  {% for item in site.slides %}
    {% if chapters contains item.title %}
      {% include gallery-item.html type="grid" %}
    {% endif %}
  {% endfor %}
</div>



