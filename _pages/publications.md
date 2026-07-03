---
layout: page
title: "Publications"
permalink: /publications/
description: "Peer-reviewed journal articles and open-source software by Jiayi Deng."
eyebrow: "Scholarship"
author_profile: false
redirect_from:
  - /publication/
---

<section class="section-block section-block--first" aria-labelledby="peer-reviewed">
  <div class="section-heading section-heading--row">
    <div>
      <p class="eyebrow">Journal articles</p>
      <h2 id="peer-reviewed">Peer-Reviewed Journal Articles</h2>
    </div>
    <a class="button button--secondary" href="https://scholar.google.com.hk/citations?user=rZjKaN0AAAAJ&amp;hl=en">Google Scholar</a>
  </div>
  <p class="lead">Verified peer-reviewed journal articles are listed newest to oldest. Author order is preserved, with Jiayi Deng's name emphasized for scanning.</p>
  <div class="publication-list publication-list--archive">
    {% assign journal_articles = site.data.scholarship.entries | where: "category", "journal" | where: "public", true | sort: "sort_date" | reverse %}
    {% for entry in journal_articles %}
      {% include scholarship-citation.html entry=entry heading_level=3 show_legacy_link=true link_title=true %}
    {% endfor %}
  </div>
</section>

<section class="section-block" aria-labelledby="software">
  <div class="section-heading">
    <p class="eyebrow">Software</p>
    <h2 id="software">Software</h2>
    <p>Open-source software is listed separately from related journal articles so package and publication outputs remain distinct.</p>
  </div>
  <div class="publication-list">
    {% assign software_records = site.data.scholarship.entries | where: "category", "software" | where: "public", true | sort: "sort_date" | reverse %}
    {% for entry in software_records %}
      {% include scholarship-citation.html entry=entry heading_level=3 %}
    {% endfor %}
  </div>
</section>

<section class="section-block" aria-labelledby="presentations-link">
  <div class="cta-band info-card">
    <h2 id="presentations-link">Talks and presentations</h2>
    <p><a class="button button--primary" href="/talks/">View conference presentations</a></p>
  </div>
</section>
