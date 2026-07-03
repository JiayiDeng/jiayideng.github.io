---
layout: page
title: "Research"
permalink: /research/
description: "Research by Jiayi Deng on AI fairness, psychometric validity, subgroup comparability, rapid guessing, and evidence synthesis."
eyebrow: "Research"
---

<section class="section-block section-block--first">
  <div class="content-narrow">
    <p class="lead">Jiayi's research connects psychometric validity, subgroup comparability, behavioral evidence, and responsible AI evaluation. The throughline is practical: build evidence that high-impact assessment and selection systems are fair, valid, interpretable, and appropriately monitored.</p>
  </div>
</section>

<section class="section-block" aria-labelledby="research-themes">
  <div class="section-heading">
    <h2 id="research-themes">Research themes</h2>
  </div>
  <div class="card-grid card-grid--four">
    <article class="info-card">
      <h3>AI fairness and human-AI evaluation</h3>
      <p>Evaluation of model outputs, end-to-end workflows, human overrides, counterfactual behavior, monitoring, and responsible-use boundaries in high-impact decision contexts.</p>
    </article>
    <article class="info-card">
      <h3>Psychometric validity and subgroup comparability</h3>
      <p>Item response theory, measurement invariance, differential item/distractor functioning, reliability, equating, calibration, and fairness-oriented validation.</p>
    </article>
    <article class="info-card">
      <h3>Behavioral and process data</h3>
      <p>Response time, rapid guessing, aberrant response patterns, cognitive labs, think-aloud protocols, and structured behavioral coding.</p>
    </article>
    <article class="info-card">
      <h3>Evidence synthesis</h3>
      <p>Systematic review and meta-analysis, including current work on how AI-enabled interventions affect student motivation and engagement.</p>
    </article>
  </div>
</section>

<section class="section-block" aria-labelledby="selected-publications">
  <div class="section-heading section-heading--row">
    <div>
      <p class="eyebrow">Selected publications</p>
      <h2 id="selected-publications">Selected peer-reviewed publications</h2>
    </div>
    <a class="button button--secondary" href="https://scholar.google.com.hk/citations?user=rZjKaN0AAAAJ&amp;hl=en">Google Scholar</a>
  </div>
  <div class="publication-list">
    {% assign selected_publications = site.data.scholarship.entries | where: "category", "journal" | where: "public", true | where: "featured", true | sort: "sort_date" | reverse %}
    {% for entry in selected_publications %}
      {% include scholarship-citation.html entry=entry heading_level=3 show_legacy_link=true %}
    {% endfor %}
  </div>
  <p class="section-action"><a href="/publications/">View all peer-reviewed publications and software</a></p>
</section>

<section class="section-block split-section" aria-labelledby="software-methods">
  <div>
    <p class="eyebrow">Methods and software</p>
    <h2 id="software-methods">Reproducible measurement and evaluation tools</h2>
    <p>Jiayi's work includes open-source statistical software, simulation studies, meta-analysis, response-time methods, and reproducible project artifacts such as model cards, dataset cards, monitoring plans, and decision logs.</p>
    {% assign software = site.data.scholarship.entries | where: "category", "software" | where: "public", true | first %}
    {% if software %}
      <p><strong>{{ software.package_name }}</strong> is available through CRAN with package DOI <a href="https://doi.org/{{ software.doi }}">{{ software.doi }}</a>.</p>
    {% endif %}
  </div>
  <div class="info-card info-card--accent">
    <h3>Human-AI Fairness Audit Lab</h3>
    <p>A synthetic, non-hiring audit demonstration that evaluates model behavior, reviewer overrides, calibration, counterfactual sensitivity, subgroup outcomes, and monitoring regressions.</p>
    <p><a href="/projects/human-ai-fairness-audit/">View the case study</a></p>
  </div>
</section>

<section class="section-block" aria-labelledby="archive-links">
  <div class="section-heading">
    <h2 id="archive-links">Academic archive</h2>
    <p>Historical publication, presentation, and teaching records remain available for continuity.</p>
  </div>
  <div class="link-card-grid">
    <a class="link-card" href="/publications/">All publication entries</a>
    <a class="link-card" href="/talks/">Talks and presentations</a>
    <a class="link-card" href="/teaching/">Teaching</a>
  </div>
</section>
