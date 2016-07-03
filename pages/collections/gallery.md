---
title: "Συλλογή Εικόνων"
layout: page-fullwidth
permalink: "/gallery/test/"
show_meta: false
header:
    image_fullwidth: "header5.jpg"
---

{% assign random = site.time | date: "%s%N" | modulo: site.gallery.size %}

{{ site.gallery[random].image_url }} {{ site.gallery[random].caption }}


{% include gallery-collection.html collection='gallery' %}
