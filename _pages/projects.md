---
layout: page
title: "Projects"
permalink: /projects/
description: "Selected reproducible research and evaluation projects by Jiayi Deng, including the Human-AI Fairness Audit Lab."
eyebrow: "Projects"
---

<section class="section-block section-block--first">
  <div class="content-narrow">
    <p class="lead">Selected public work focused on reproducible evaluation, psychometric evidence, behavioral data, and responsible AI assessment. The featured project is a synthetic, non-hiring audit demonstration designed to make fairness and workflow risks inspectable.</p>
  </div>
</section>

<section class="section-block" aria-labelledby="featured-project">
  <div class="project-feature-card">
    <div>
      <p class="eyebrow">Featured</p>
      <h2 id="featured-project">Human-AI Fairness Audit Lab</h2>
      <p>A public, reproducible audit of a synthetic AI-assisted candidate-review workflow. The project evaluates held-out model performance, subgroup and intersectional outcomes, calibration, counterfactual behavior, reviewer overrides, escalation policy behavior, and monitoring regressions.</p>
      <p class="disclosure"><strong>Responsible-use boundary:</strong> synthetic applicants and simulated decisions only. This is an evaluation demonstration, not a hiring recommendation system.</p>
      <ul class="tag-list">
        <li>Python</li>
        <li>scikit-learn</li>
        <li>Fairlearn</li>
        <li>DuckDB</li>
        <li>Streamlit</li>
        <li>pytest</li>
      </ul>
      <div class="button-row">
        <a class="button button--primary" href="https://human-ai-fairness-audit-lab.streamlit.app/">Live Demo</a>
        <a class="button button--secondary" href="https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab">GitHub</a>
        <a class="button button--text" href="/projects/human-ai-fairness-audit/">Case Study</a>
      </div>
    </div>
    <div class="audit-panel">
      <div class="audit-panel__bar"><span></span><span></span><span></span></div>
      <dl class="metric-grid">
        <div><dt>Training cases</dt><dd>6,000 synthetic</dd></div>
        <div><dt>Validation cases</dt><dd>2,000 synthetic</dd></div>
        <div><dt>Held-out audit</dt><dd>2,400 synthetic</dd></div>
        <div><dt>Monitoring</dt><dd>800 synthetic</dd></div>
      </dl>
    </div>
  </div>
</section>

<section class="section-block" aria-labelledby="selected-projects">
  <div class="section-heading">
    <h2 id="selected-projects">Selected research and software work</h2>
  </div>
  <div class="card-grid">
    <article class="info-card">
      <h3>`aberrance` R package</h3>
      <p>Open-source R package work for detecting aberrant behavior in test data, connected to peer-reviewed research in <em>Applied Psychological Measurement</em>.</p>
      <p><a href="/research/">See selected research</a></p>
    </article>
    <article class="info-card">
      <h3>Rapid guessing and effort-moderated scoring</h3>
      <p>Simulation and meta-analytic research on response-time thresholds, rapid guessing, reliability, test performance, and population invariance in equating.</p>
      <p><a href="/publications/">View publication archive</a></p>
    </article>
    <article class="info-card">
      <h3>AI effects evidence synthesis</h3>
      <p>Current systematic review and meta-analysis work on AI's role in student motivation and engagement, listed as under review in the supplied content source.</p>
      <p><a href="/research/">Read research overview</a></p>
    </article>
  </div>
</section>
