---
layout: page
permalink: /archive
title: Archive of All Collections
---

**Note:** This page contains all material in anything in `_posts`, as well as all custom collections, such as `_notes`, and `_journals`, etc. with the only exception being `_pages`.

{% for collection in site.collections %}
{% if collection.label != "pages" %}

  <h2>Entries from {{ collection.label | capitalize }}</h2>
  <ul>
    {% for item in site[collection.label] %}
      <li class="archive-links"><a href="{{ item.url }}">{{ item.title }}</a></li>
    {% endfor %}
  </ul>
  {% endif %}
{% endfor %}
