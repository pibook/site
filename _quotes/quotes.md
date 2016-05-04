---
layout: page-fullwidth
header: no
permalink: "/quotes/"
show_meta: false
---

{% include list-collection collection='quotes' %}

{% assign random = site.time | date: "%s%N" | modulo: site.quotes.size %}

<blockquote>&ldquo;{{ site.quotes[random].quote }}&rdquo; <cite>{{ site.quotes[random].person }}</cite></blockquote>
