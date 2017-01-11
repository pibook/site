---
layout: page-fullwidth
header:
  image_fullwidth: 'header.jpg'
  caption: !CAPTION!
  caption_url: !CAPTION_URL!
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
{% assign captionText = site.quotes[random].caption %}
{% assign captionBy = site.quotes[random].person %}
{% capture captionFull %}{{ site.quotes[random].caption }} - {{ site.quotes[random].person }}{% endcapture %}
{% assign captionURL = site.quotes[random].url %}

{{ page.header.caption | replace: '!CAPTION!', captionFull }}
{{ page.header.caption_url | replace: '!CAPTION_URL!', captionURL }}


{% comment %}
*
* First check, if widget is empty or not by checking if there is a title
*
{% endcomment %}
<div class="row t60">
    {% if page.widget-1.title %}
    <div class="medium-4 columns">
        <a href="{{ page.widget-1.url }}"><h2 class="font-size-h3 t10">{{ page.widget-1.title }}</h2></a>

        {% comment %}
        *
        * Show an inspirational biography, chosen randomly from the biography collection. it is refreshed only when the site rebuilds, for a more dynamic refresh do a client-side javascript implementation.
        *
        {% endcomment %}

        {% assign random = site.time | date: "%s%N" | modulo: site.biography.size %}

        {% capture url %}{{ site.biography[random].image_url }}{% endcapture %}
        {% assign split_url = url | split: '.' %}
        {% capture thumb_url %}{{split_url[0]}}-thumb.{{split_url[1]}}{% endcapture %}

        <a href="{{ site.biography[random].url }}"><img src="{{ site.urlimg }}{{ thumb_url }}" height="182" alt=""></a>

        <br><small> {{ site.biography[random].caption }} </small>

        <p>{{ page.widget-1.text }}</p>
    </div><!-- /.medium-4.columns -->
    {% endif %}


    {% if page.widget-2.title %}
    <div class="medium-4 columns">
        <a href="{{ page.widget-2.url }}"><h2 class="font-size-h3 t10">{{ page.widget-2.title }}</h2></a>

        {% comment %}
        *
        * Show an inspirational image, chosen randomly from the gallery collection. it is refreshed only when the site rebuilds, for a more dynamic refresh do a client-side javascript implementation.
        *
        {% endcomment %}

        {% assign random = site.time | date: "%s%N" | modulo: site.gallery.size %}

        {% capture url %}{{ site.gallery[random].image_url }}{% endcapture %}
        {% assign split_url = url | split: '.' %}
        {% capture thumb_url %}{{split_url[0]}}-thumb.{{split_url[1]}}{% endcapture %}

        <a href="{{ site.gallery[random].url }}"><img src="{{ site.urlimg }}{{ thumb_url }}" height="182" alt=""></a>

        <br><small> {{ site.gallery[random].caption }} </small>


        <p>{{ page.widget-2.text }}</p>
    </div><!-- /.medium-4.columns -->
    {% endif %}


    {% if page.widget-3.title %}
    <div class="medium-4 columns">
        <a href="{{ page.widget-3.url }}">
          <h2 class="font-size-h3 t10">{{ page.widget-3.title }}</h2></a>

          {% comment %}
          *
          * Show an inspirational case-study, chosen randomly from the case-study collection. it is refreshed only when the site rebuilds, for a more dynamic refresh do a client-side javascript implementation.
          *
          {% endcomment %}

          {% assign random = site.time | date: "%s%N" | modulo: site.case-study.size %}

          {% capture url %}{{ site.case-study[random].image_url }}{% endcapture %}
          {% assign split_url = url | split: '.' %}
          {% capture thumb_url %}{{split_url[0]}}-thumb.{{split_url[1]}}{% endcapture %}

          <a href="{{ site.case-study[random].url }}"><img src="{{ site.urlimg }}{{ thumb_url }}" height="182" alt=""></a>

          <br><small> {{ site.case-study[random].caption }} </small>

        <p>{{ page.widget-3.text }}</p>
    </div><!-- /.medium-4.columns -->
    {% endif %}
</div><!-- /.row -->
