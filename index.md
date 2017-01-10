---
layout: frontpage
title: pibook
header:
  image_fullwidth: 'header.jpg'
  caption: '!CAPTION! - !CAPTION_BY!'
  caption_url: '!CAPTION_URL!'
widget-1:
  title: Βιογραφίες
  url: /biography/
widget-2:
  title: Εικόνες
  url: /gallery/
widget-3:
  title: Μελέτες περίπτωσης
  url: /case-study/
---



{% comment %}
*
* Show an inspirational quote, chosen randomly from the quotes collection. it is refreshed only when the site rebuilds, for a more dynamic refresh do a client-side javascript implementation.
*
{% endcomment %}

{% assign random = site.time | date: "%s%N" | modulo: site.quotes.size %}

{% page.caption | replace: '!CAPTION!', site.quotes[random].caption | replace: '!CAPTION_BY!', site.quotes[random].person %}

{% page.caption_url | replace: '!CAPTION_URL!', site.quotes[random].url %}
