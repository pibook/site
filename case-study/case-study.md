---
layout: page
title: "Μελέτες περίπτωσης"
subheadline: ""
show_meta: false
teaser: ""
permalink: "/case-study/"
header: no
---

Ορισμός: [Minecraft](/case-study/minecraft/), [Xerox Star](/case-study/star/)

Μέθοδος: [Ποντίκι](/case-study/mouse/), [Η σχεδίαση των καθημερινών πραγμάτων](/case-study/poet/)

Αρχέτυπα: [Microsoft Windows](/case-study/windows/), [Apple iPod](/case-study/ipod/)

Εργαλεία: [Arduino](/case-study/arduino/), [Reactable](/case-study/reactable/)

Μοντέλα: [Facebook](/case-study/facebook/), [Αισθητική και ευχρηστία](/case-study/affective/)

Σύνθεση: [World Wide Web](/case-study/www/), [Wikipedia](/case-study/wikipedia/)

<ul>
    {% for post in site.categories.case-study %}
    <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>

{% include contribute-case-study %}
