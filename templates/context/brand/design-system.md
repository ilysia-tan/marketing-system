---
file: brand-design-system
owner: "{{owner}}"
last_reviewed: "{{YYYY-MM-DD}}"
status: draft
source_of_truth: "{{e.g. the website repo's tailwind config}}"
---

# Design system

How the brand looks. If the brand already lives in code (a Tailwind config, CSS variables, a Figma library), **the code is the source of truth** and this file mirrors it. Record where each value comes from so an audit can spot drift.

## Sources

| What | Where it lives |
|---|---|
| Tokens | {{e.g. tailwind.config.js}} |
| Global styles | {{e.g. globals.css}} |
| Components | {{e.g. src/components/global/}} |
| Design files | {{e.g. Figma library link}} |
| Logos and images | {{e.g. CMS, DAM or CDN folder}} |

## Colour

| Token | Hex | Role | Pairs with (passes WCAG AA) |
|---|---|---|---|
| `{{brand}}` | {{#hex}} | {{primary accent: CTAs, highlights}} | {{text colour}} |
| `{{background}}` | {{#hex}} | {{page background}} | {{text colour}} |
| `{{text}}` | {{#hex}} | {{body text}} | {{background}} |
| `{{muted}}` | {{#hex}} | {{secondary text, captions}} | {{background}} |

**Rule of proportion:** {{e.g. mostly neutral, accent used sparingly on what matters most}}

## Type

**Typeface(s):** {{family, weights, where they're loaded from}}

| Style | Mobile | Desktop | Weight | Line height | Use |
|---|---|---|---|---|---|
| Display | {{px}} | {{px}} | {{weight}} | {{lh}} | {{hero only}} |
| H1 | | | | | |
| H2 | | | | | |
| H3 | | | | | |
| Body | | | | | |
| Caption | | | | | |
| Overline | | | | | {{letter spacing}} |

## Layout and spacing

{{Grid, max widths, spacing scale, fixed header height and similar.}}

## Components

| Component | Variants | When to use |
|---|---|---|
| Button | {{e.g. brand, white, black}} | {{rule}} |
| Card | {{types}} | {{rule}} |
| Navigation | {{variants}} | {{rule}} |

## Motion

{{Signature animations, durations, easing; and the reduced-motion rule.}}

## Imagery and iconography

- **Photography:** {{style; what to avoid}}
- **Illustration:** {{style}}
- **Icons:** {{set, stroke, size}}
- **Logo:** {{versions, clear space, minimum size, backgrounds it may sit on}}

## Accessibility baseline

{{e.g. WCAG 2.1 AA: contrast, one H1 per page, visible focus states, alt text on every image.}}

## Templates for design skills

Templates must take their values from the tokens above, never hard-coded.

| Template | Size | Where it lives |
|---|---|---|
| {{e.g. LinkedIn post image}} | {{1200×1200}} | {{link}} |
| {{e.g. slide deck}} | {{16:9}} | {{link}} |
