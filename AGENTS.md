# AGENTS.md — Jiayi Deng Personal Website Refresh

## Mission

Modernize `JiayiDeng/jiayideng.github.io` into a polished, credible professional website for an applied research scientist specializing in AI fairness, psychometrics, human–AI evaluation, and high-impact assessment systems. Add the supplied current resume PDF and preserve the site's academic record.

## Required reading before edits

Read these files completely before changing code:

1. `PROJECT_SPEC.md`
2. `CURRENT_SITE_AUDIT.md`
3. `DESIGN_SYSTEM.md`
4. `CONTENT_DECK.md`
5. `.agent/PLANS.md`

Then inspect the repository, current branch, deployment configuration, collections, layouts, includes, assets, and build commands. Create and maintain `.agent/EXEC_PLAN_WEBSITE_REFRESH.md` before implementation.

## Source of truth and truthfulness

- The supplied resume PDF and `CONTENT_DECK.md` are the factual source of truth for current professional content.
- Preserve exact publication authorship and status. Do not invent citations, metrics, employers, dates, awards, project outcomes, or technical skills.
- The Human-AI Fairness Audit Lab uses synthetic data. Always describe it as a synthetic, non-hiring audit demonstration.
- Do not imply that synthetic disparities prove discrimination, legal compliance, causal effects, or real-world model validity.
- Do not describe the observed v1-to-v2 TPR-gap difference as statistically established; the bootstrap interval for the change includes zero.
- Never publish confidential HumRRO, AAMC, state-assessment, applicant, employee, or client material.

## Repository and branch discipline

- Target repository: `JiayiDeng/jiayideng.github.io`.
- Start from the current default branch unless the user has explicitly selected another base.
- Create branch `codex/refresh-personal-website` unless it already exists; if it exists, continue safely on it.
- Preserve existing publication, teaching, talk, redirect, and collection content. Migrate or restyle it rather than deleting it.
- Do not rewrite unrelated history.
- Keep the working tree clean at handoff.
- Make coherent commits with descriptive messages.
- Push/open a PR only when authenticated. Never claim a push, PR, GitHub Pages build, or public deployment unless verified.

## Architecture constraints

- Prefer an incremental modernization of the existing Jekyll/GitHub Pages site rather than a framework migration.
- Keep GitHub Pages compatibility and avoid plugins unsupported by GitHub Pages.
- Avoid heavy JavaScript frameworks, client-side trackers, third-party font dependencies, and unnecessary production dependencies.
- Use system/local font stacks unless the current repository already has a deliberate compliant font solution.
- Keep project instructions and planning files out of rendered navigation. Add them to Jekyll `exclude` if necessary.
- Publish only the supplied resume PDF. Do not publish the DOCX source.

## Visual and UX standards

- Professional, research-forward, contemporary, calm, and human—not a generic academic template and not a flashy startup landing page.
- The homepage must communicate Jiayi's current positioning within the first viewport.
- Use clear hierarchy, restrained color, generous spacing, high-quality responsive cards, and strong calls to action.
- Avoid excessive gradients, decorative animation, glassmorphism, stock illustrations, fake testimonials, skill progress bars, or icon clutter.
- Preserve and reuse the current profile photo unless the repository contains a clearly newer user-provided image. Do not generate or alter a likeness.
- Make desktop, tablet, and mobile layouts intentional.

## Accessibility

Target WCAG 2.2 AA in practical implementation:

- semantic landmarks and heading order;
- keyboard-operable navigation and controls;
- visible focus states;
- skip-to-content link;
- sufficient color contrast;
- descriptive link text and image alt text;
- no information conveyed by color alone;
- respect `prefers-reduced-motion`;
- touch targets and mobile menu usable at 390 px width;
- PDF link clearly identified as a PDF/download.

## SEO and metadata

- Set accurate title, description, canonical URL, author metadata, sitemap/feed behavior, Open Graph/Twitter metadata, and a suitable social preview image if an existing asset can be used responsibly.
- Add Person JSON-LD with only verified public profile links.
- Remove stale title, location, employer/student status, old university email, and placeholder description.
- Do not add analytics unless a real GA4 measurement ID is supplied.

## Content rules

- Primary navigation: Home, Research, Projects, Resume, Contact. Academic talks/teaching may remain accessible under Research or an Academic archive, but should not dominate the primary journey.
- The Human-AI Fairness Audit Lab is the featured project and must link to both its live Streamlit demo and GitHub repository.
- The downloadable resume must be available at a stable, URL-safe path: `/files/Jiayi_Deng_Resume_2026.pdf`.
- Use the copy in `CONTENT_DECK.md` as a starting point. Improve readability without changing factual meaning.
- Use `etheldeng0726@gmail.com` as the current public email unless repository evidence or user instruction establishes a newer address.

## Build and verification

Discover the repository's actual toolchain first. At minimum:

1. Install dependencies using the repository-supported Bundler/Ruby process.
2. Run the Jekyll production build.
3. Run available lint/tests.
4. Add a local-link and generated-site smoke check. Use `html-proofer` only if it can be added without destabilizing GitHub Pages; otherwise write a lightweight internal-link check.
5. Verify the resume PDF exists in `_site/files/` after build and is linked from homepage and Resume page.
6. Inspect the rendered site in a browser at desktop and mobile widths, including home, projects, publications/research, resume, contact, and at least one legacy content page.
7. Check browser console for errors.
8. Verify no broken internal links, stale placeholder text, old UMN email, “Second-year PhD student,” “expected 2024,” or Minneapolis location remain in visible current-profile content.
9. Confirm existing deep links and redirects still work where practical.

Record exact commands and outcomes in `.agent/EXEC_PLAN_WEBSITE_REFRESH.md`.

## Completion criteria

Do not call the project complete until:

- current positioning is visible above the fold;
- resume PDF download works locally from the generated site;
- featured project links are correct;
- current bio, employment, location, degree status, and email are accurate;
- publications and academic history remain available;
- site is responsive and accessible;
- production Jekyll build passes;
- no secrets, confidential data, fake URLs, or unsupported claims are present;
- before/after decisions and remaining risks are documented in the final handoff.
