---
layout: single
type: page
permalink: /categories/
title: Categories
---


<div id="archives">
{% for category in site.categories %}
  <div class="archive-group">
    {% capture category_name %}{{ category | first }}{% endcapture %}
    <div id="#{{ category_name | slugize }}"></div>
    <p></p>

    <h3 class="category-head">{{ category_name }}</h3>
    <a name="{{ category_name | slugize }}"></a>
    <ul>
    {% for post in site.categories[category_name] %}
    <article class="archive-item">
       <li><a href="{{ site.baseurl }}{{ post.url }}">{{post.date | date: "%b %d, %Y"}}: {{post.title}}</a></li>
    </article>
    {% endfor %}
    </ul>
  </div>
{% endfor %}
</div>
