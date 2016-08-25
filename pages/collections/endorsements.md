---
layout: page-fullwidth
header: no
permalink: "/endorsements/"
show_meta: false
---

{% include list-collection collection='endorsements' %}

{% assign random = site.time | date: "%s%N" | modulo: site.endorsements.size %}

<blockquote>&ldquo;{{ site.endorsements[random].text }}&rdquo; <cite>{{ site.endorsements[random].person }}</cite></blockquote>
