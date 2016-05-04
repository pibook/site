---
layout: frontpage
title: "Ο Προγραμματισμός της Διάδρασης: Από τον Επιτραπέζιο στον Κινητό και Διάχυτο Υπολογισμό"
header:
   image_fullwidth: "header.jpg"
---

{% comment %}
*
* Show an inspirational quote, chosen randomly from the quotes collection
*
{% endcomment %}

{% assign random = site.time | date: "%s%N" | modulo: site.quotes.size %}

<blockquote>&ldquo;{{ site.quotes[random].text }}&rdquo; <cite>{{ site.quotes[random].person }}</cite></blockquote>
