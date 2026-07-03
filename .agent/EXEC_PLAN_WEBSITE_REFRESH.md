# Execution Plan: Scholarly Work Corrections

## Goal and User-Visible Outcome

Update Jiayi Deng's scholarly-work sections from the supplied `PUBLICATIONS.docx` inventory while excluding all technical reports from public output. The public site should render Research, Publications, and Talks from a canonical scholarship data source, with verified peer-reviewed journal articles, a separate software entry for the `aberrance` R package, and normalized conference presentations.

## Current Repository State and Architecture

- Repository: `JiayiDeng/jiayideng.github.io`
- Base branch: `master`, pulled from `origin/master` with `git pull --ff-only origin master` on 2026-07-03; already up to date.
- Working branch: `codex/correct-publications-no-reports`
- User-supplied file: `PUBLICATIONS.docx` remains local and is ignored via `.gitignore` so it is not published or committed.
- Site architecture: GitHub Pages-compatible Jekyll site using `_pages`, `_publications`, `_talks`, `_data`, `_layouts`, `_includes`, and SCSS from `assets/css/main.scss`.
- Scholarly pages before edits:
  - `_pages/research.md` manually lists selected publications and includes an unverified manuscript status.
  - `_pages/publications.md` renders `_publications` collection records.
  - `_pages/talks.html` renders `_talks` collection records.
  - `_publications/equating.md` still labels the published article as accepted.
  - Several legacy publication/talk records have punctuation, title-case, and metadata issues.
- Build/test support: `Gemfile`, Jekyll build, and `scripts/check_site.rb` generated-site smoke check.

## Scope

- Add `_data/scholarship.yml` as the canonical public/maintenance source for journal, software, manuscript, and presentation records.
- Render `/research/`, `/publications/`, and `/talks/` from canonical data.
- Keep technical reports entirely out of public data and rendered site.
- Keep unverified manuscript records private in data, marked `public: false` and `needs_verification: true`.
- Preserve existing collection routes and update at least `_publications/equating.md` and `_publications/2021-paper.md`.
- Update `scripts/check_site.rb` to enforce scholarly-content integrity.
- Run build, generated-site checks, and browser QA with screenshots.

## Explicit Non-Goals

- Do not change the site's overall refreshed design or unrelated pages.
- Do not publish DOCX source content, technical report titles, report numbers, clients, or confidential/internal details.
- Do not publish unverified manuscript statuses or target journals.
- Do not add citation counts, impact factors, analytics, external fonts, or new production frameworks.
- Do not merge the resulting pull request.

## Information Architecture and Content Map

- `/research/`
  - Keep research themes.
  - Selected peer-reviewed publications: six specified titles, newest-to-oldest, drawn from `_data/scholarship.yml`.
  - Link to full `/publications/` and Google Scholar.
  - Software/methods section should reference `aberrance` software and Human-AI Fairness Audit Lab without duplicating journal records.
- `/publications/`
  - `Peer-Reviewed Journal Articles` section with 11 verified public journal records.
  - `Software` section with the CRAN `aberrance` package record.
  - Link to `/talks/`.
  - No technical reports or unverified manuscripts.
- `/talks/`
  - Selected presentations section for recent/relevant verified presentations.
  - Complete archive grouped by year, newest first, from public presentation records.
  - The 2025 NCME submitted proposal remains private unless official acceptance/presentation is verified.
- Legacy routes:
  - Keep `_publications/*` and `_talks/*` routes compatible.
  - Update visible citations to canonical/verified metadata where practical.

## Verification Sources and Decisions

- `PUBLICATIONS.docx` extracted as inventory on 2026-07-03.
- Journal metadata verified through Crossref plus publisher pages where article numbers were needed:
  - Taylor & Francis DOI metadata: `10.1080/10627197.2026.2656892`, `10.1080/10627197.2022.2110465`.
  - Springer Nature/Large-scale Assessments in Education metadata: `10.1186/s40536-025-00265-8`, `10.1186/s40536-021-00110-8`.
  - Wiley DOI metadata: `10.1111/emip.12665`.
  - SAGE DOI metadata: `10.1177/00131644241246749`, `10.1177/01466216241261707`, `10.1177/00131644231168398`, `10.1177/01466216221108991`, `10.1177/01466216211051719`, `10.1177/2096531119878964`.
- Software metadata verified from CRAN: `https://CRAN.R-project.org/package=aberrance`, package DOI `10.32614/CRAN.package.aberrance`, listed authors Kylie Gorney and Jiayi Deng, and CRAN-listed source repository `https://github.com/kyliegorney/aberrance`.
- AERA 2020 handled conservatively using AERA's cancellation notice: the record is described as accepted for the 2020 Annual Meeting with the in-person meeting canceled, not as a completed in-person presentation.
- Decision: technical reports are intentionally out of scope and will not be added to `_data/scholarship.yml`.
- Decision: two manuscript records will be retained only as private maintenance records unless user confirms current public status.
- Decision: the 2025 NCME proposal record is retained as `public: false` and `needs_verification: true`; it is not rendered as a completed presentation.
- Decision: formal issue/print date drives display ordering where available; online-first year is kept separately when it differs.

## Accessibility, SEO, Performance, and Privacy

- Use semantic headings and existing accessible page shell.
- Ensure citation links have meaningful labels: DOI, View publisher page, View on CRAN, View source repository.
- No empty `href`, placeholder links, local file paths, or confidential technical report strings in generated HTML.
- Long citations must wrap on mobile without horizontal overflow.

## Milestones

1. Repository orientation
   - Files: `AGENTS.md`, project docs, scholarly pages, collections, config, layouts/includes, SCSS, check script.
   - Acceptance: branch created from up-to-date `master`; existing route strategy documented.
   - Status: completed.
2. Bibliographic verification
   - Files/sources: `PUBLICATIONS.docx`, publisher/DOI/CRAN/conference sources.
   - Acceptance: 11 journal records and software metadata verified conservatively; unverified records marked private.
   - Status: completed.
3. Data and rendering implementation
   - Files: `_data/scholarship.yml`, `_pages/research.md`, `_pages/publications.md`, `_pages/talks.html`, relevant includes/SCSS as needed.
   - Acceptance: pages render from canonical data and meet requested content exclusions.
   - Status: completed.
4. Legacy route updates
   - Files: `_publications/equating.md`, `_publications/2021-paper.md`, other collection pages as needed.
   - Acceptance: legacy pages resolve and display corrected citations.
   - Status: completed.
5. Generated-site validation
   - Files: `scripts/check_site.rb`.
   - Commands: bundle install, Jekyll build, generated-site check.
   - Acceptance: all required checks pass.
   - Status: completed.
6. Browser QA and screenshots
   - Routes: `/research/`, `/publications/`, `/talks/`, `/publications/equating/`, `/publications/2021-paper/`.
   - Acceptance: desktop/mobile screenshots, no console errors, no horizontal overflow, mobile nav works.
   - Status: completed.
7. Commit, push, draft PR
   - Acceptance: coherent commit, branch pushed, draft PR opened if authentication is available.
   - Status: pending.

## Progress Log

- 2026-07-03: Read user request from attached text and `AGENTS.md`.
- 2026-07-03: Switched from prior refresh branch to `master`, pulled latest `origin/master`, created `codex/correct-publications-no-reports`.
- 2026-07-03: Read required project/spec/design/content/planning docs.
- 2026-07-03: Inspected `_pages/research.md`, `_pages/publications.md`, `_pages/talks.html`, `_config.yml`, `_publications/`, `_talks/`, `assets/css/main.scss`, layouts, and `scripts/check_site.rb`.
- 2026-07-03: Extracted `PUBLICATIONS.docx` text and confirmed technical reports must be excluded.
- 2026-07-03: Verified 11 journal records and the CRAN software record; corrected official titles, author initials, DOI links, article numbers, pages, and online-first/formal-year distinctions.
- 2026-07-03: Added `_data/scholarship.yml` and `_includes/scholarship-citation.html`.
- 2026-07-03: Rebuilt `/research/`, `/publications/`, and `/talks/` from canonical data; withheld unverified manuscripts and the 2025 NCME submitted proposal from public rendering.
- 2026-07-03: Updated legacy publication routes, including `/publications/equating/` and `/publications/2021-paper/`; disabled inherited social-share blocks on publication records to preserve heading hierarchy.
- 2026-07-03: Normalized legacy talk punctuation and the AERA 2020 cancellation/accepted-session wording.
- 2026-07-03: Added `PUBLICATIONS.docx` to `.gitignore` to keep the user-supplied inventory local and unpublished.

## Exact Validation Evidence

- `/opt/homebrew/opt/ruby@3.4/bin/bundle install`
  - Passed. Bundler used a temporary home because `/Users/jiayideng` is not writable under the sandbox.
  - Result: `Bundle complete! 9 Gemfile dependencies, 97 gems now installed.`
- `/opt/homebrew/opt/ruby@3.4/bin/bundle exec jekyll build --trace`
  - Passed.
  - Notes: existing Jekyll warnings about logger initialization, `Jekyll::Stevenson#initialize`, and optional `faraday-retry`; no build failure.
- `/opt/homebrew/opt/ruby@3.4/bin/ruby scripts/check_site.rb`
  - Passed with `Generated-site check passed.`
  - Added assertions cover required routes, 11 journal records, six selected Research records, separate `aberrance` journal/software records, newest-to-oldest ordering, legacy routes, internal links, empty links, forbidden public strings, withheld 2025 proposal, and technical-report exclusion.
- Local server:
  - Initial sandboxed bind failed with `Operation not permitted - bind(2) for 127.0.0.1:4000`.
  - Retried with approved local bind: `/opt/homebrew/opt/ruby@3.4/bin/bundle exec jekyll serve --host 127.0.0.1 --port 4000 --trace`.
  - Served successfully at `http://127.0.0.1:4000/`.
- Browser QA:
  - Routes inspected at desktop width 1440 and mobile width 390: `/research/`, `/publications/`, `/talks/`, `/publications/equating/`, `/publications/2021-paper/`.
  - Console errors: none on inspected routes.
  - Horizontal overflow: none on inspected routes.
  - Heading hierarchy: no skips after disabling legacy publication share blocks.
  - Empty links and missing image alt attributes: none on inspected routes.
  - Mobile navigation: menu button present at 390px; click set `aria-expanded="true"` and revealed Home, Research, Projects, Resume, Contact.
  - DOI/external link presence: Publications page contains 12 DOI links including journal and package DOI; CRAN link present.
  - Deng emphasis: present in all generated citation-list author lines on Research, Publications, and Talks.
  - Reduced motion/focus styles: `prefers-reduced-motion: reduce`, skip link, and `:focus-visible` rules verified in `assets/css/main.scss`. Synthetic Tab movement did not transfer focus in the browser automation environment, so focus visibility was verified statically rather than by a successful browser Tab event.
- Screenshot evidence:
  - `.agent/screenshots/research-viewport-desktop-1440.png`
  - `.agent/screenshots/research-viewport-mobile-390.png`
  - `.agent/screenshots/publications-viewport-desktop-1440.png`
  - `.agent/screenshots/publications-viewport-mobile-390.png`
  - `.agent/screenshots/talks-viewport-desktop-1440.png`
  - `.agent/screenshots/talks-viewport-mobile-390.png`
  - `.agent/screenshots/legacy-equating-viewport-desktop-1440.png`
  - `.agent/screenshots/legacy-equating-viewport-mobile-390.png`
  - `.agent/screenshots/legacy-2021-paper-viewport-desktop-1440.png`
  - `.agent/screenshots/legacy-2021-paper-viewport-mobile-390.png`
  - `.agent/screenshots/mobile-nav-open-390.png`

## Remaining Risks and Handoff Items

- Need official confirmation for the 2025 NCME submitted proposal before publishing it as a completed presentation.
- Need user confirmation before publishing either private manuscript record:
  - `Can AI motivate students? A systematic review and meta-analysis on AI's role in student motivation and engagement`
  - `Beyond self-regulated learning: Exploring the roles of emotional competence and online learning readiness pre- and post-COVID-19 in high school students' math performance?`
- The 2023 Conference on Test Security `aberrance` presentation remains marked `needs_verification: true` in data because the supplied inventory did not include a presentation type; it is rendered conservatively as a paper presentation from the conference inventory.
- Historical Minneapolis locations remain in legacy talk records and generated talk pages as event locations, not current-profile location claims.
