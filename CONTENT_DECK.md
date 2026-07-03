# Content Deck — Website Copy Source

Use this as a factual, editable starting point. Improve rhythm and page fit, but do not add unsupported claims.

## Global identity

**Name:** Jiayi Deng, Ph.D.

**Professional title:** Applied Research Scientist | AI Fairness, Psychometrics & Human-AI Evaluation

**Location:** New York Metro

**Email:** etheldeng0726@gmail.com

## Homepage hero

**Eyebrow**

Applied Research Scientist · Psychometrician

**Headline**

Jiayi Deng, Ph.D.

**Positioning statement**

I design and evaluate fair, valid, and human-centered measurement systems—including AI-assisted decision workflows.

**Supporting paragraph**

My work combines psychometrics, behavioral data, and responsible AI evaluation to study how high-impact assessment and selection systems perform across people, contexts, and decision workflows. I build reproducible methods for validation, subgroup comparability, human oversight, and evidence-based risk assessment.

**Primary CTA**

Explore the AI Fairness Audit

**Secondary CTA**

Download Resume (PDF)

## About

Jiayi Deng is an applied research scientist and psychometrician with a Ph.D. in Quantitative Methods in Education and a minor in Statistics. Her work spans validation, measurement invariance, reliability, equating, simulation, behavioral-data analysis, and subgroup comparability in high-impact assessment and selection systems.

At the Human Resources Research Organization, she contributes to psychometric research and independent quality review across state assessment programs and a medical-school admissions situational judgment assessment. She also evaluates generative-AI-assisted expert workflows for standards alignment and evidence mapping, with attention to output quality, human review, documentation, scalability, and validation.

Her research includes open-source statistical software, peer-reviewed work on rapid guessing and measurement bias, and a systematic review and meta-analysis of AI's effects on student motivation and engagement.

## Proof points

Use as short facts, not inflated counters:

- Ph.D. in Quantitative Methods in Education; minor in Statistics
- Research Scientist at HumRRO
- Validation and fairness research for high-impact assessment and selection systems
- Open-source R package development
- Peer-reviewed publications in psychometrics and educational measurement

## Featured project

### Human-AI Fairness Audit Lab

A public, reproducible audit of a synthetic AI-assisted candidate-review workflow. The project evaluates not only model predictions, but the complete human–AI decision system: held-out performance, subgroup and intersectional outcomes, calibration, counterfactual behavior, human overrides, escalation policies, and monitoring regressions.

**Boundary statement**

The lab uses synthetic applicants and simulated model/reviewer decisions. It is an evaluation and research demonstration, not a hiring recommendation system, and its statistical disparities do not establish real-world discrimination or legal compliance.

**Technical snapshot**

- Python, pandas, scikit-learn, Fairlearn, DuckDB, Streamlit, pytest
- 6,000 training, 2,000 validation, 2,400 held-out audit, and 800 monitoring synthetic cases
- 56 automated tests in the current release record
- Direct-input invariance and end-to-end extraction-sensitivity suites
- Dataset/model cards, fairness test plan, audit report, monitoring plan, and decision log

**Selected held-out synthetic findings**

- Model v1 AUC: 0.736
- Model v2 AUC: 0.746
- Direct-input recommendation flips: 7.3% in v1 and 0.0% in v2
- End-to-end extraction-sensitivity flips: 11.0% in v1 and 1.1% in v2
- Observed supported max–min TPR gaps: 22.6% in v1 and 12.6% in v2; the bootstrap interval for the v1-minus-v2 change includes zero, so do not present this as a statistically established improvement

**Links**

- Live demo: `https://human-ai-fairness-audit-lab.streamlit.app/`
- Source: `https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab`

## Research themes

### AI fairness and human–AI evaluation

Evaluation of model outputs, end-to-end workflows, human overrides, counterfactual behavior, monitoring, and responsible-use boundaries in high-impact decision contexts.

### Psychometric validity and subgroup comparability

Item response theory, measurement invariance, differential item/distractor functioning, reliability, equating, calibration, and fairness-oriented validation.

### Behavioral and process data

Response time, rapid guessing, aberrant response patterns, cognitive labs, think-aloud protocols, and structured behavioral coding.

### Evidence synthesis

Systematic review and meta-analysis, including current work on how AI-enabled interventions affect student motivation and engagement.

## Experience summary

### Human Resources Research Organization — Research Scientist, 2024–Present

- Conducts psychometric validation and independent quality reviews for statewide assessment programs.
- Contributes to an AI-assisted alignment initiative using generative-AI workflows for standard-to-standard, item-to-standard, and evidence-mapping tasks.
- Evaluates chat-based and batch AI outputs within expert review workflows, including quality, consistency, scalability, documentation, and validation requirements.
- Supports psychometric analysis for AAMC PREview, a situational judgment assessment used in medical-school admissions.
- Conducts think-aloud cognitive labs and behavioral/cognitive coding to study response processes and sources of measurement error.

### Pearson / Pearson VUE — Applied Psychometric Roles, 2023–2024

Applied psychometric analysis, progress-monitoring evaluation, simulation research, and conference proposal development.

### University of Minnesota — Research and Teaching, 2020–2024

Developed IRT, equating, invariance, response-time, simulation, and meta-analytic research; co-developed the open-source R package `aberrance`; taught educational and psychological measurement and statistics.

## Selected research/publications

Keep citation details aligned with the resume and existing publication collection. Prioritize:

1. *Can AI Motivate Students? A Systematic Review and Meta-analysis on AI's Role in Student Motivation and Engagement.* Under review.
2. Gorney, K., & Deng, J. (2024). `aberrance`: An R package for detecting aberrant behavior in test data. *Applied Psychological Measurement*.
3. Rios, J. A., & Deng, J. (2024). Is effort-moderated scoring robust to multidimensional rapid guessing? *Educational and Psychological Measurement*.
4. Deng, J., & Rios, J. A. (2022). Investigating the effect of differential rapid guessing on population invariance in equating. *Applied Psychological Measurement, 46*(7), 589–604.
5. Rios, J. A., & Deng, J. (2023/2024 publication metadata as verified). A comparison of response-time threshold scoring procedures in mitigating bias from rapid guessing behavior.

Do not guess the full author list or venue for the AI meta-analysis. Preserve the exact submitted manuscript citation when available in the source resume/site data.

## Contact CTA

**Heading**

Let's connect

**Copy**

I am interested in rigorous, human-centered approaches to AI evaluation, psychometric fairness, and high-impact measurement systems.

**Actions**

- Email Jiayi
- View GitHub
- View Google Scholar
- Download Resume

## Footer

`© [current year] Jiayi Deng. Built with Jekyll and hosted on GitHub Pages.`

Avoid advertising the template/theme as part of the visible professional brand, while retaining required license notices in repository files.
