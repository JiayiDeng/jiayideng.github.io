# Design System

## Design direction

A modern professional research portfolio: precise, calm, credible, approachable, and technically literate. The design should complement psychometrics and AI evaluation without looking clinical, bureaucratic, or overly futuristic.

## Color tokens

Use CSS custom properties and validate contrast before finalizing.

```scss
:root {
  --color-ink: #172033;
  --color-ink-muted: #526071;
  --color-navy: #17365d;
  --color-navy-strong: #102b4e;
  --color-teal: #087f8c;
  --color-teal-strong: #066974;
  --color-cyan-soft: #e9f7f8;
  --color-blue-soft: #eef4fb;
  --color-paper: #ffffff;
  --color-canvas: #f7f9fc;
  --color-border: #dbe3ec;
  --color-border-strong: #bcc9d7;
  --color-focus: #b64b00;
  --color-success: #1f6f50;
}
```

Adjust as needed to meet WCAG AA. Do not use pale teal text on white.

## Typography

Use a system font stack; do not load external fonts merely for visual novelty.

```scss
--font-sans: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
--font-serif: ui-serif, Georgia, Cambria, "Times New Roman", serif;
--font-mono: ui-monospace, SFMono-Regular, Menlo, Consolas, monospace;
```

The first `Inter` entry is acceptable only if present locally; the stack must work without downloading it.

Suggested scale:

- Hero H1: `clamp(2.5rem, 6vw, 4.8rem)`, tight line height
- Page H1: `clamp(2.1rem, 4vw, 3.4rem)`
- Section H2: `clamp(1.65rem, 3vw, 2.35rem)`
- Card title: 1.15–1.35rem
- Body: 1rem–1.075rem, 1.65–1.75 line height
- Small label: 0.78–0.875rem, never tiny or low contrast

Keep line length around 62–72 characters for prose.

## Spacing and layout

- Content max width: approximately 1180–1240 px
- Reading column: approximately 720–780 px
- Section spacing: 5–7rem desktop, 3.5–4.5rem mobile
- Card gap: 1.25–1.75rem
- Radius: 14–18 px for modern cards; smaller radius for tags/buttons
- Shadows: subtle and sparse; rely on borders and spacing more than elevation

## Components

### Header

- sticky only if it does not consume excessive mobile space
- name/monogram at left
- concise primary nav
- clear active state
- mobile menu with real button semantics, `aria-expanded`, and keyboard support

### Buttons

- Primary: navy or teal fill, white text
- Secondary: white/transparent with strong border
- Inline text link for low-priority actions
- Minimum practical touch height around 44 px
- Focus ring visibly distinct from hover

### Hero

- asymmetric but balanced two-column layout on desktop
- copy first in DOM
- profile image secondary
- subtle background geometry may use CSS only
- no carousel, auto-typing, or decorative particle effects

### Cards

- use cards for research areas and projects, not every piece of content
- border, spacious padding, consistent heading level
- tags should be readable and not mimic disabled buttons

### Featured project

- visually dominant after hero/proof strip
- may use a browser-frame screenshot treatment
- links for Live Demo and GitHub must be obvious
- synthetic/non-hiring label should be visible but not alarming

### Publication entries

- clean citation hierarchy
- year, venue/status, title, authors
- DOI/code/project links when verified
- avoid oversized cards for every publication

### Timeline

- compact; no decorative zig-zag
- date, organization/role, one or two evidence-oriented bullets

## Motion

- Optional small opacity/translate entrance transitions only
- no dependence on animation for comprehension
- disable animations under `prefers-reduced-motion: reduce`
- no parallax

## Images

- Reuse the existing profile image
- Use object-position/crop carefully; never distort
- Add explicit width/height or aspect ratio to reduce layout shift
- Use meaningful alt text such as `Portrait of Jiayi Deng`
- Project screenshot should have descriptive alt text

## Dark mode

Optional, not required. Do not add it unless it can be implemented fully, including charts/images, contrast, code blocks, navigation, and user preference persistence without delaying core quality.

## Avoid

- skill bars or percentage proficiency meters
- excessive pills/tags
- generic AI brain imagery
- neon gradients
- fake logos or client marks
- animated statistics
- stock testimonial quotes
- publishing employer/client confidential branding without permission
