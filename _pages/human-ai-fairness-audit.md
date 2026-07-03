---
layout: page
title: "Human-AI Fairness Audit Lab"
permalink: /projects/human-ai-fairness-audit/
description: "Case study for a synthetic, non-hiring Human-AI Fairness Audit Lab evaluating an AI-assisted candidate-review workflow."
eyebrow: "Project case study"
---

<section class="section-block section-block--first split-section">
  <div>
    <p class="lead">A public, reproducible audit of a synthetic AI-assisted candidate-review workflow. The lab is designed to show how model metrics, human review behavior, subgroup outcomes, counterfactual sensitivity, escalation rules, and monitoring checks can be evaluated together.</p>
    <p class="disclosure"><strong>Synthetic, non-hiring demonstration:</strong> the lab uses synthetic applicants and simulated model/reviewer decisions. It is an evaluation and research demonstration, not a hiring recommendation system, and its statistical disparities do not establish real-world discrimination, legal compliance, causal effects, or real-world model validity.</p>
    <div class="button-row">
      <a class="button button--primary" href="https://human-ai-fairness-audit-lab.streamlit.app/">Open Live Demo</a>
      <a class="button button--secondary" href="https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab">View Source</a>
    </div>
  </div>
  <div class="audit-panel">
    <div class="audit-panel__bar"><span></span><span></span><span></span></div>
    <dl class="metric-grid">
      <div><dt>Training</dt><dd>6,000 synthetic cases</dd></div>
      <div><dt>Validation</dt><dd>2,000 synthetic cases</dd></div>
      <div><dt>Held-out audit</dt><dd>2,400 synthetic cases</dd></div>
      <div><dt>Monitoring</dt><dd>800 synthetic cases</dd></div>
      <div><dt>Automated tests</dt><dd>56 in the current release record</dd></div>
      <div><dt>Stack</dt><dd>Python, pandas, scikit-learn, Fairlearn, DuckDB, Streamlit, pytest</dd></div>
    </dl>
  </div>
</section>

<section class="section-block" aria-labelledby="problem">
  <div class="section-heading">
    <h2 id="problem">Problem and intended use</h2>
  </div>
  <div class="content-narrow">
    <p>AI-assisted decision workflows can look acceptable when only aggregate model metrics are reviewed. In high-impact contexts, evaluation also needs to examine whether outputs behave consistently across subgroups, whether human review changes or amplifies patterns, whether escalation policies work as intended, and whether the system continues to behave as expected over time.</p>
    <p>The lab demonstrates a structured audit approach on synthetic data. Its intended use is methodological: show how a reproducible fairness and workflow evaluation can be organized, documented, tested, and monitored.</p>
  </div>
</section>

<section class="section-block" aria-labelledby="design">
  <div class="section-heading">
    <h2 id="design">System design</h2>
  </div>
  <div class="card-grid">
    <article class="info-card">
      <h3>Model-level evaluation</h3>
      <p>Held-out synthetic performance, subgroup metrics, supported intersectional slices, calibration, and threshold behavior.</p>
    </article>
    <article class="info-card">
      <h3>Workflow evaluation</h3>
      <p>Simulated reviewer decisions, human overrides, escalation policy behavior, and end-to-end extraction sensitivity.</p>
    </article>
    <article class="info-card">
      <h3>Responsible documentation</h3>
      <p>Dataset/model cards, fairness test plan, audit report, monitoring plan, and decision log.</p>
    </article>
  </div>
</section>

<section class="section-block" aria-labelledby="findings">
  <div class="section-heading">
    <h2 id="findings">Selected held-out synthetic findings</h2>
    <p>These values describe the synthetic audit release and should not be generalized to real hiring or selection settings.</p>
  </div>
  <div class="metric-table-wrap">
    <table class="metric-table">
      <thead>
        <tr>
          <th scope="col">Check</th>
          <th scope="col">Model v1</th>
          <th scope="col">Model v2</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">Held-out synthetic AUC</th>
          <td>0.736</td>
          <td>0.746</td>
        </tr>
        <tr>
          <th scope="row">Direct-input recommendation flips</th>
          <td>7.3%</td>
          <td>0.0%</td>
        </tr>
        <tr>
          <th scope="row">End-to-end extraction-sensitivity flips</th>
          <td>11.0%</td>
          <td>1.1%</td>
        </tr>
        <tr>
          <th scope="row">Observed supported max-min TPR gaps</th>
          <td>22.6%</td>
          <td>12.6%</td>
        </tr>
      </tbody>
    </table>
  </div>
  <p class="note"><strong>Uncertainty caveat:</strong> the bootstrap interval for the v1-minus-v2 TPR-gap change includes zero, so the observed difference should not be presented as a statistically established improvement.</p>
</section>

<section class="section-block split-section" aria-labelledby="architecture">
  <div>
    <p class="eyebrow">Architecture</p>
    <h2 id="architecture">Reproducible audit artifacts</h2>
    <p>The project pairs an interactive Streamlit app with tested Python audit logic and documentation artifacts. The emphasis is on inspectability: a reader can see what was evaluated, which checks passed, what changed across release records, and where the synthetic demonstration's boundaries begin and end.</p>
  </div>
  <ul class="check-list">
    <li>Python, pandas, scikit-learn, Fairlearn, DuckDB, Streamlit, pytest</li>
    <li>Direct-input invariance and end-to-end extraction-sensitivity suites</li>
    <li>Dataset cards, model cards, fairness test plan, audit report, monitoring plan, and decision log</li>
    <li>Monitoring regression checks for release-to-release review</li>
  </ul>
</section>

<section class="cta-band" aria-labelledby="audit-links">
  <div>
    <p class="eyebrow">Explore</p>
    <h2 id="audit-links">Review the demo and source repository</h2>
  </div>
  <div class="button-row">
    <a class="button button--primary" href="https://human-ai-fairness-audit-lab.streamlit.app/">Live Demo</a>
    <a class="button button--secondary" href="https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab">GitHub Repository</a>
  </div>
</section>
