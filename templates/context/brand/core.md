---
file: brand-core
owner: "{{owner}}"
last_reviewed: "{{YYYY-MM-DD}}"
status: draft            # draft | approved
change_rule: Changes only with approval from {{approver}}. Log every change below.
---

# Brand core

The stable part of the brand, split into five files. Skills treat everything in them as a hard rule. Campaign themes, which change more often, go in `expressions.md`.

| File | Answers | Read by |
|---|---|---|
| `philosophy.md` | Why do we exist, and what do we believe? | Every skill, before anything long-form |
| `personas.md` | Who do we serve, and what do they need? | Every writing, prospecting and proposal skill |
| `uvp.md` | Why us, rather than anyone else or nothing? | Website, proposals, ads, sales emails |
| `voice-and-writing.md` | How do we sound, and how do we write each format? | Every skill that writes words |
| `design-system.md` | How do we look? | Every skill that makes visuals or pages |

## The brand in four lines

Skills can use this summary when a task is short. Keep it in step with the files above.

- **We exist to:** {{mission, from philosophy.md}}
- **We serve:** {{primary persona names, from personas.md}}
- **Unlike others, we:** {{core UVP line, from uvp.md}}
- **We sound:** {{three voice traits, from voice-and-writing.md}}

## Audit checklist

The monthly brand audit scores each output against these points (pass / fix):

- [ ] **Philosophy:** nothing contradicts our beliefs or the "we never" list
- [ ] **Persona:** written for one named persona, about a problem they actually have
- [ ] **UVP:** the claim matches `uvp.md`, and every proof point traces to a source
- [ ] **Voice:** passes the checklist in `voice-and-writing.md`
- [ ] **Design:** uses only tokens and components from `design-system.md`

## Known inconsistencies

Contradictions found during an audit go here until they're fixed at the source, so that skills don't copy either version.

| Found | Where | Conflict | Decision |
|---|---|---|---|
| {{YYYY-MM-DD}} | {{page or file}} | {{what disagrees}} | {{which version wins}} |

## Change log

| Date | File | Change | Why | Approved by |
|---|---|---|---|---|
| {{YYYY-MM-DD}} | all | First version | | {{name}} |
