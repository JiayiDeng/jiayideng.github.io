---
layout: archive
title: "Publications"
permalink: /publications/
description: "Publication archive for Jiayi Deng, preserving peer-reviewed and historical research entries."
author_profile: false
redirect_from:
  - /publication/
---

<p class="lead">This archive preserves Jiayi Deng's publication record and historical research entries. For a current thematic overview, visit <a href="/research/">Research</a>.</p>

<p><a class="button button--secondary" href="https://scholar.google.com.hk/citations?user=rZjKaN0AAAAJ&amp;hl=en">View Google Scholar</a></p>

<div class="publication-list publication-list--archive">
{% for post in site.publications reversed %}
  <article class="publication-item">
    <p class="publication-item__status">{{ post.date | default: "1900-01-01" | date: "%Y" }}{% if post.venue %} · {{ post.venue | strip_html }}{% endif %}</p>
    <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    {% if post.paperurl %}<p><a href="{{ post.paperurl }}">Download paper</a></p>{% endif %}
  </article>
{% endfor %}
</div>
