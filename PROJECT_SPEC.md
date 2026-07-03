# Project Specification — Jiayi Deng Professional Website Refresh

## 1. Project overview

### Repository

- GitHub: `JiayiDeng/jiayideng.github.io`
- Current public URL: `https://jiayideng.github.io`
- Current implementation: Jekyll/GitHub Pages based on an older AcademicPages/Minimal Mistakes template
- Current default branch observed during planning: `master`

### Goal

Turn the existing academic site into a contemporary professional portfolio that presents Jiayi Deng as an applied research scientist and psychometrician working at the intersection of AI fairness, behavioral measurement, human–AI evaluation, and high-impact assessment/selection systems.

The result should help a recruiter or hiring manager answer, within 20–30 seconds:

1. Who is Jiayi now?
2. What problems does she solve?
3. What evidence shows she can do AI fairness and evaluation work?
4. Where can they see a working project, read publications, download the resume, and contact her?

## 2. Current-state problems to solve

The current site visibly presents stale information, including an old PhD-student identity, Minneapolis location, university email, old resume/CV, placeholder metadata, and a navigation structure centered on talks and teaching rather than current applied research and AI evaluation.

The visual system is largely the stock legacy academic template: gray palette, narrow academic layout, weak homepage narrative, no featured project hierarchy, and no current recruiting-oriented calls to action.

## 3. Strategy

### Preserve the platform

Use the existing Jekyll/GitHub Pages architecture unless a blocking technical issue makes that impossible. An incremental redesign is safer than migrating to React/Next/Astro and reduces deployment risk, content loss, URL changes, and maintenance burden.

### Reframe the information architecture

Primary journey:

1. **Home** — current positioning, proof points, featured project, selected research, current experience, contact CTA
2. **Research** — selected publications, research themes, software/methods, link to Google Scholar
3. **Projects** — featured Human-AI Fairness Audit Lab plus selected reproducible research/software projects
4. **Resume** — concise web summary plus stable PDF download
5. **Contact** — email and verified professional profiles

Legacy Talks and Teaching content should remain available, but can move under an “Academic” secondary link or appear below primary research content.

## 4. Target homepage

### Hero

Required content:

- Eyebrow: `Applied Research Scientist · Psychometrician`
- H1: `Jiayi Deng, Ph.D.`
- Positioning statement: `I design and evaluate fair, valid, and human-centered measurement systems—including AI-assisted decision workflows.`
- Supporting copy: emphasize high-impact assessment/selection validation, measurement invariance, subgroup comparability, behavioral evidence, generative-AI-assisted expert workflows, and reproducible evaluation tools.
- Primary CTA: `Explore the AI Fairness Audit`
- Secondary CTA: `Download Resume`
- Additional compact links: GitHub, Google Scholar, LinkedIn/ORCID where verified
- Profile photo using current repository asset, presented with restrained professional treatment

### Proof strip

Use factual, non-inflated proof points, for example:

- Ph.D. in Quantitative Methods in Education, minor in Statistics
- Applied research across high-stakes assessment and selection systems
- Open-source R package contributor/developer
- Peer-reviewed research in measurement bias, rapid guessing, invariance, and AI impact

Do not use fake counters or unsupported download/citation counts.

### Featured project

Prominent card/section for **Human-AI Fairness Audit Lab**:

- one-sentence purpose;
- synthetic/non-hiring disclosure;
- methods tags: held-out evaluation, subgroup/intersectional metrics, calibration, counterfactual tests, human overrides, monitoring;
- visual preview from the project repository screenshot if it can be copied with attribution/source tracking, or a tasteful CSS/browser-frame preview without fabricating a screenshot;
- buttons for Live Demo, GitHub, and Project Details;
- optional factual project snapshot:
  - 6,000 training / 2,000 validation / 2,400 held-out audit / 800 monitoring synthetic cases;
  - 56 automated tests in the current audited release;
  - model v1/v2 AUC on held-out synthetic audit: 0.736 / 0.746;
  - direct-input and end-to-end sensitivity suites.

Do not present the observed v1/v2 TPR-gap difference as statistically established; its bootstrap interval includes zero.

### Research themes

Three or four cards:

1. AI fairness and human–AI evaluation
2. Psychometric validity and subgroup comparability
3. Test-taking behavior, process data, and robust scoring
4. Evidence synthesis and meta-analysis of AI effects

### Selected publications

Display 4–6 most relevant entries, ordered for current positioning, with links only where verified. Include a `View all publications` and Google Scholar CTA.

### Experience snapshot

A compact timeline:

- Research Scientist, Human Resources Research Organization, 2024–present
- Earlier Pearson/Pearson VUE applied psychometric roles
- University of Minnesota research and teaching

Avoid exposing client-confidential details beyond already-public resume language.

### Final CTA

A concise contact band: `Interested in AI evaluation, psychometric fairness, or high-impact measurement systems?` with email and profile links.

## 5. Pages and routes

### `/` Home

Implement the homepage above.

### `/research/`

- Research overview and themes
- Selected publications grouped logically
- Open-source software/methodological work
- Google Scholar/ORCID links
- Preserve existing publication collection links
- Redirect or retain `/publications/` so old links do not break

### `/projects/`

Grid/list of selected projects. At minimum:

- Human-AI Fairness Audit Lab
- `aberrance` R package / relevant public code if the repository can verify it
- rapid-guessing/HG-MI or other clearly documented public project

Do not promote abandoned tutorial repositories as flagship work.

### `/projects/human-ai-fairness-audit/`

Case-study structure:

- problem and intended use
- why model-level metrics alone are insufficient
- system design and synthetic-data boundaries
- audit dimensions
- selected held-out findings with uncertainty caveat
- responsible-use limitations
- architecture/technical stack
- links to live demo and source

### `/resume/` and `/cv/`

- Canonical route should be `/resume/`
- Keep `/cv/` as a redirect or equivalent route for compatibility
- Display a clean HTML summary rather than reproducing every bullet
- Provide a visible button linking to `/files/Jiayi_Deng_Resume_2026.pdf`
- Label the link as PDF
- Remove the obsolete 2022 PDF link from visible content

### `/contact/`

- public email
- GitHub
- Google Scholar
- LinkedIn/ORCID only after verifying links
- no contact form unless a privacy-safe, no-backend solution is already supported; a simple mailto is sufficient

### Legacy pages

- Talks and Teaching remain accessible
- Update styling and remove them from primary navigation if appropriate
- Preserve redirects and URLs where practical

## 6. Content sources and public links

Use these links:

- Website: `https://jiayideng.github.io`
- GitHub profile: `https://github.com/JiayiDeng`
- Fairness Audit repository: `https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab`
- Fairness Audit live demo: `https://human-ai-fairness-audit-lab.streamlit.app/`
- Public email: `etheldeng0726@gmail.com`
- Google Scholar currently configured: `https://scholar.google.com.hk/citations?user=rZjKaN0AAAAJ&hl=en`
- ORCID currently configured: `https://orcid.org/0000-0002-1962-2956`
- LinkedIn currently configured by slug: `jiayi-deng-6b1712170`; verify the final URL before publishing

Do not publish the old UMN email as the primary contact.

## 7. Resume asset

The package contains:

`assets/Jiayi_Deng_Resume_2026.pdf`

Copy it to:

`files/Jiayi_Deng_Resume_2026.pdf`

Verify after build that it exists at:

`_site/files/Jiayi_Deng_Resume_2026.pdf`

The web page can call it a “Resume” rather than a comprehensive academic CV. Do not commit a DOCX version.

## 8. Visual implementation

Implement the design tokens in `DESIGN_SYSTEM.md`. The design should feel:

- credible and research-led;
- warm but restrained;
- clean, modern, and readable;
- appropriate for AI research, psychometrics, and hiring-manager review;
- distinct from the stock AcademicPages theme.

Prefer custom SCSS layered over existing layouts/includes. It is acceptable to create a dedicated home layout and reusable includes for section headings, project cards, publication lists, tags, buttons, and CTA bands.

## 9. Technical requirements

- GitHub Pages compatible Jekyll build
- Avoid unsupported plugins
- Correct production URL/baseurl behavior
- No broken Liquid syntax
- No external API calls needed to render pages
- No secret values
- Responsive at 390, 768, 1024, and 1440 px widths
- Browser support for current Safari, Chrome, Firefox, and Edge
- Local/system font stack
- Optimized images with explicit dimensions where practical
- Print stylesheet must not make the resume page unusable
- Existing sitemap/feed may remain if accurately configured

## 10. SEO requirements

- Title: `Jiayi Deng, Ph.D. | AI Fairness, Psychometrics & Human-AI Evaluation`
- Description: approximately 150–165 characters, factual and current
- Correct canonical URL
- Person JSON-LD with verified profile links
- Open Graph title/description/image
- Descriptive page titles for projects, research, resume, and contact
- Sitemap includes canonical public pages
- Remove placeholder `personal description`
- Do not enable Google Analytics without a supplied real GA4 ID

## 11. Accessibility requirements

- WCAG 2.2 AA-oriented color contrast
- Skip link
- Keyboard navigation
- Focus-visible states
- Correct heading hierarchy
- Alt text for meaningful images; empty alt for purely decorative images
- No auto-playing motion
- Reduced-motion media query
- Accessible mobile menu
- PDF download accessible name
- External links identified consistently, without noisy “opens in new window” text everywhere

## 12. Testing and acceptance

### Build checks

- `bundle install` or the repository-supported equivalent
- `bundle exec jekyll build --trace`
- available tests/lint
- internal link validation against `_site`
- YAML/front-matter parsing checks

### Content assertions

Generated public HTML must not contain stale current-profile phrases:

- `Second-year Phd Student`
- `Ph.D. student` as current identity
- `expected 2024`
- `Minneapolis, MN` as current location
- `deng0194@umn.edu` as primary/current contact
- `personal description`

Historical page content may mention university roles/dates when contextually correct.

### Functional assertions

- hero CTAs work
- live demo and GitHub project links work syntactically
- Resume PDF downloads
- navigation works with keyboard and on mobile
- old `/cv/` and `/publications/` routes remain usable or redirect correctly
- no visible Liquid variables or broken includes
- no console errors in local browser inspection

### Visual QA

Capture local screenshots/appshots for:

- homepage at desktop and mobile
- projects page
- project case study
- resume page
- research/publications page

Review for typography, clipping, layout shifts, contrast, alignment, cards, and long publication titles.

## 13. Delivery

At completion provide:

- branch and commit SHA;
- concise change summary;
- exact build/test outcomes;
- local screenshot paths;
- deployment status, stated honestly;
- remaining manual steps, if any;
- content or links that still need user verification.
