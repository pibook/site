---
title: "Συλλογή Εικόνων"
layout: page-fullwidth
permalink: "/gallery/images/"
show_meta: false
header:
    image_fullwidth: "header5.jpg"
---

{% comment %}
*

{% include gallery-collection.html %}

*
{% endcomment %}


{% assign random = site.time | date: "%s%N" | modulo: site.gallery.size %}

{{ site.gallery[random].image_url }}

{% capture url %}{{ site.gallery[random].image_url }}{% endcapture %}
{% assign split_url = url | split: '.' %}
{% capture thumb_url %}{{split_url[0]}}-thumb.{{split_url[1]}}{% endcapture %}

<a href="/gallery/"><img src="{{ site.urlimg }}{{ thumb_url }}"></a>

<br><small> {{ site.gallery[random].caption }} </small>
