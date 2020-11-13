---
layout: page
title: Organized by Tags
permalink: /tags/
content-type: eg
---

<div>
    {% for tag in site.tags %}
    <div class="pure-u-1 tags">
        <h3 id="{{ tag | first }}">{{ tag | first | capitalize }}</h3>
        <ul>
        {% for post in tag.last %} 
            <li><a href="{{post.url}}">{{ post.title }}</a></li>
        {% endfor %}
        </ul>
    </div>
    {% endfor %}
    <br/>
    <br/>
</div>
