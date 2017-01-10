---
title: Παραθέσεις
layout: page-fullwidth
teaser: '<a href="/contribute/">Μπορείτε να προσθέσετε περισσότερες παραθέσεις σύμφωνα με τις οδηγίες</a>'
header: no
permalink: /quotes/
show_meta: false
---

{% include collection.html param='quotes' %}



        {% comment %}
        *
        * Show an inspirational quote, chosen randomly from the quotes collection. it is refreshed only when the site rebuilds, for a more dynamic refresh do a client-side javascript implementation.
        *
        {% endcomment %}

        {% assign random = site.time | date: "%s%N" | modulo: site.quotes.size %}

        <blockquote>{{ site.quotes[random].caption }} {{ site.quotes[random].person }}</blockquote>
