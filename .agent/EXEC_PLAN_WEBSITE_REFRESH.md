# Execution Plan: Jiayi Deng Website Refresh

## 1. Goal and User-Visible Outcome

Refresh `JiayiDeng/jiayideng.github.io` into a polished professional GitHub Pages website for Jiayi Deng, Ph.D., positioning her as an applied research scientist and psychometrician working on AI fairness, human-AI evaluation, psychometric validity, and high-impact measurement systems.

Expected public outcome:

- Current identity visible above the fold.
- Primary navigation: Home, Research, Projects, Resume, Contact.
- Human-AI Fairness Audit Lab featured with live demo, source link, and synthetic/non-hiring boundaries.
- Resume PDF available at `/files/Jiayi_Deng_Resume_2026.pdf`.
- Existing publications, talks, teaching, and legacy archive routes preserved.
- GitHub Pages-compatible Jekyll build.

## 2. Current Repository State and Build/Deployment Architecture

- Starting branch observed: `master`.
- Default remote branch: `origin/master`.
- Working branch created: `codex/refresh-personal-website`.
- Remote: `origin https://github.com/JiayiDeng/jiayideng.github.io.git`.
- Current architecture: Jekyll/GitHub Pages, AcademicPages/Minimal Mistakes-derived theme.
- Build dependencies: `Gemfile` with `github-pages`, `jekyll-feed`, `jekyll-sitemap`, `hawkins`.
- No `.github` workflow directory found; deployment appears to rely on repository-level GitHub Pages behavior.
- Existing collections: `_publications`, `_talks`, `_teaching`, `_portfolio`.
- Important current dirty worktree before implementation:
  - Deleted legacy generated assets under `assets/css`, `assets/js`, and `assets/fonts`.
  - Untracked refresh documents, package manifest, `.agent/`, and `assets/Jiayi_Deng_Resume_2026.pdf`.
  - `.DS_Store` untracked and should not be committed.

## 3. Scope and Explicit Non-Goals

In scope:

- Content, IA, SEO, accessibility, visual system, templates, primary pages, redirects, resume PDF copy, local validation, screenshots, commits.

Non-goals:

- Framework migration.
- Third-party analytics or external font loading.
- Publishing DOCX source or confidential/non-public material.
- Claiming GitHub Pages deployment, push, or PR without verified authentication and successful commands.

## 4. Information Architecture and Content Migration Map

- `/`: modern homepage replacing stale graduate-student about page.
- `/research/`: new research overview with selected themes and publication archive access.
- `/publications/`: preserved compatibility route, restyled as publication archive / redirect-equivalent page.
- `/projects/`: selected project grid featuring Human-AI Fairness Audit Lab and verified public work.
- `/projects/human-ai-fairness-audit/`: new case-study page.
- `/resume/`: canonical resume page with concise HTML summary and PDF CTA.
- `/cv/`: compatibility route to resume content or redirect.
- `/contact/`: public email and verified profiles.
- `/talks/`, `/teaching/`, collection item URLs: preserve and restyle.

## 5. Visual/Design Implementation Plan

- Replace dependency on deleted legacy generated CSS/JS with first-party `assets/css/main.scss` and lightweight `assets/js/main.min.js`.
- Keep Jekyll layouts/includes simple and GitHub Pages-compatible.
- Add a full-width `page` layout for current professional pages.
- Keep archive/single layouts functional for legacy collections.
- Use CSS custom properties from `DESIGN_SYSTEM.md`, system font stack, responsive grids, restrained cards, visible focus states, skip link, and accessible mobile nav.

## 6. Accessibility, SEO, Performance, and Privacy Requirements

- Semantic landmarks, skip link, heading order, keyboard navigation, visible focus, touch-friendly mobile menu, reduced-motion media query.
- Accurate title, description, canonical URLs, Open Graph/Twitter metadata, and Person JSON-LD with verified public links only.
- No analytics unless a real ID is supplied; set analytics provider to false.
- No third-party scripts or font downloads.
- Clear PDF/download labeling.

## 7. Milestones, Files, Commands, Acceptance Criteria

1. Repository orientation
   - Files: required docs, `_config.yml`, layouts, includes, pages, collections, assets.
   - Acceptance: architecture and current risks documented here.

2. Foundation and metadata
   - Files: `_config.yml`, `_data/navigation.yml`, `_includes/head.html`, `_includes/seo.html`, `_includes/masthead.html`, `_includes/footer.html`, `_includes/scripts.html`.
   - Acceptance: current metadata, nav, SEO, JSON-LD, no stale author sidebar facts.

3. Content pages
   - Files: `_pages/about.md`, `_pages/research.md`, `_pages/projects.md`, `_pages/human-ai-fairness-audit.md`, `_pages/resume.md`, `_pages/cv.md`, `_pages/contact.md`, `_pages/publications.md`.
   - Acceptance: requested routes exist, legacy routes remain usable, factual claims align with content deck.

4. Visual system and assets
   - Files: `assets/css/main.scss`, `assets/js/main.min.js`, `files/Jiayi_Deng_Resume_2026.pdf`.
   - Acceptance: responsive professional site; resume generated into `_site/files/`.

5. Internal checks and generated-site smoke tests
   - Commands to run and record: dependency install, production build with trace, available tests/lint, internal link check, content stale-text scan, PDF/CTA assertions.

6. Browser QA
   - Serve locally, inspect required pages at desktop and 390px mobile, check console, capture screenshots.

7. Commit and handoff
   - Acceptance: coherent commits, clean handoff except intentional ignored files or documented constraints.

## 8. Progress Log

- 2026-07-03: Read `AGENTS.md`, `PROJECT_SPEC.md`, `CURRENT_SITE_AUDIT.md`, `DESIGN_SYSTEM.md`, `CONTENT_DECK.md`, and `.agent/PLANS.md`.
- 2026-07-03: Inspected current branch/remotes, repository file tree, key Jekyll config, layouts/includes, navigation, pages, collections, assets, and stale-content search results.
- 2026-07-03: Created branch `codex/refresh-personal-website` from `master` while preserving the existing dirty worktree.
- 2026-07-03: Created this execution plan before implementation edits.
- 2026-07-03: Updated site metadata, author profile, analytics setting, navigation, accessible masthead, footer, SEO include, skip-link target, and full-width page layout.
- 2026-07-03: Rebuilt Home, Research, Publications archive, Projects, Human-AI Fairness Audit case study, Resume, `/cv/` compatibility route, and Contact pages.
- 2026-07-03: Replaced dependency on deleted legacy generated CSS/JS with first-party `assets/css/main.scss` and `assets/js/main.min.js`.
- 2026-07-03: Copied supplied resume PDF to `files/Jiayi_Deng_Resume_2026.pdf`.
- 2026-07-03: Fixed local asset URL handling by changing `_includes/base_path` to use `site.baseurl` instead of the absolute public URL.
- 2026-07-03: Added `scripts/check_site.rb` generated-site smoke checker and ran production build, link/content checks, browser QA, and screenshots.
- 2026-07-03: Verified GitHub CLI authentication for account `JiayiDeng`; push/PR creation is available.

## 9. Decisions and Discoveries

- Use incremental Jekyll modernization; no framework migration needed.
- Legacy generated CSS/JS files are already deleted in the starting worktree, so the refresh will replace them with a small first-party stylesheet and navigation script.
- Preserve old publication/talk/teaching collection item URLs.
- Keep LinkedIn URL configured from the supplied slug, marked as needing user verification unless live validation succeeds.
- Do not surface unverified LinkedIn, ResearchGate, or Twitter as current-profile links. Public current-profile links are GitHub, Google Scholar, ORCID, email, and the audit project links.
- Local system Ruby is 2.6.10; unconstrained dependency resolution selected `ffi-1.17.4-x86_64-darwin`, which requires Ruby 3.x. Added a conservative `ffi ~> 1.15.0` Gemfile pin so the repository-supported Bundler/Jekyll process can validate locally without changing site architecture or adding an unsupported plugin.

## 10. Exact Validation Evidence

- Dependency installation:
  - `bundle install` with system Ruby 2.6 failed because Bundler attempted `/Library/Ruby/Gems/2.6.0/bundler.lock`.
  - `bundle install --path vendor/bundle` outside sandbox reached RubyGems but failed because `ffi-1.17.4-x86_64-darwin` requires Ruby 3.x.
  - Added `ffi ~> 1.15.0`; system Ruby then failed compiling native gems because SDK headers resolve to `universal-darwin24` while installed Ruby headers are under `universal-darwin25`.
  - Installed Homebrew Ruby 4.0.5, but Bundler could not resolve `github-pages ~> 228` because `commonmarker < 1.0` requires Ruby `< 4.0`.
  - Installed Homebrew Ruby 3.4.10.
  - `/opt/homebrew/opt/ruby@3.4/bin/bundle install` passed with `github-pages 228`; added explicit `csv` and `webrick` gems for Ruby 3.4 compatibility with Jekyll 3.9.
- Production build:
  - `/opt/homebrew/opt/ruby@3.4/bin/bundle exec jekyll build --trace` passed.
  - Known non-fatal output: Bundler temp home warning because `/Users/jiayideng` is not writable in the sandbox, Jekyll logger/Stevenson warnings, and Faraday retry advisory.
- Generated-site smoke check:
  - `/opt/homebrew/opt/ruby@3.4/bin/ruby scripts/check_site.rb` passed.
  - Confirms required routes, local links/assets, resume PDF, homepage/resume PDF links, audit CTAs, and stale current-profile phrase absence on core pages.
- Resume:
  - `_site/files/Jiayi_Deng_Resume_2026.pdf` exists.
  - `_site/index.html` and `_site/resume/index.html` link to `/files/Jiayi_Deng_Resume_2026.pdf`.
- Stale content sweep:
  - `rg -n "Second-year Phd Student|Second-year PhD student|Ph\\.D\\. student|expected 2024|deng0194@umn\\.edu|personal description|Jiayi Deng CV 2022" _site` returned no matches.
  - `Minneapolis, MN` remains only in historical talks/archive pages, not current-profile pages.
- External URL checks:
  - `https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab`: HTTP 200.
  - `https://github.com/JiayiDeng`: HTTP 200.
  - `https://orcid.org/0000-0002-1962-2956`: HTTP 200.
  - `https://scholar.google.com.hk/citations?user=rZjKaN0AAAAJ&hl=en`: HTTP 200.
  - `https://human-ai-fairness-audit-lab.streamlit.app/`: reachable but `curl -I -L` hit Streamlit authentication redirects and stopped at max redirects; the link remains the supplied official demo URL.
- Browser QA:
  - Local server: `/opt/homebrew/opt/ruby@3.4/bin/bundle exec jekyll serve --host 127.0.0.1 --port 4000 --trace`.
  - Browser loaded local CSS and JS from `http://127.0.0.1:4000/assets/...` after fixing `_includes/base_path`.
  - Desktop and 390px mobile inspected for Home, Projects, Human-AI case study, Resume, Research, Contact, and representative legacy publication page.
  - Browser checks: no console errors, no horizontal overflow at 390px, skip link present, one H1 on homepage, all images have alt attributes, PDF link text includes PDF, mobile menu button has accessible name and opens with `aria-expanded="true"`.
- Screenshot/appshot paths:
  - `.agent/screenshots/home-desktop-1440-viewport.png`
  - `.agent/screenshots/home-mobile-390-viewport.png`
  - `.agent/screenshots/home-mobile-menu-open-390-viewport.png`
  - `.agent/screenshots/projects-desktop-1440-viewport.png`
  - `.agent/screenshots/audit-case-study-desktop-1440-viewport.png`
  - `.agent/screenshots/resume-desktop-1440-viewport.png`
  - `.agent/screenshots/research-desktop-1440-viewport.png`
  - `.agent/screenshots/contact-mobile-390-viewport.png`
  - `.agent/screenshots/legacy-publication-desktop-1440-viewport.png`

## 11. Remaining Risks and Handoff

- LinkedIn profile URL from the source package was not published because it was not verified cleanly during implementation. Current public profile links are GitHub, Google Scholar, and ORCID.
- Streamlit URL was externally reachable but HEAD verification loops through Streamlit auth redirects. User should click-test the live app in a normal browser session after PR/deploy.
- GitHub Pages public deployment is not verified until the pushed branch/PR is built by GitHub Pages and the public URL is checked.
