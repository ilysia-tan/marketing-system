---
file: messaging-matrix
owner: "{{owner}}"
last_reviewed: "{{YYYY-MM-DD}}"
refresh: quarterly, or whenever a test beats the current message
---

# Messaging matrix

What to say to each audience. Every writing skill looks up its audience's row here before it drafts anything. One row per audience: a persona from `brand/personas.md`, optionally narrowed to a segment (e.g. "P1, logistics").

## Matrix

| ID | Audience | Their pain, in their words | Our message (one sentence) | Proof | Product | Call to action | Status |
|---|---|---|---|---|---|---|---|
| M1 | {{P1, segment}} | "{{pain}}" | {{message}} | {{case study, number}} | {{product_name}} | {{e.g. book a demo}} | {{live / testing / retired}} |
| M2 | | | | | | | |

## Rules

- **One message per row.** If a row needs two messages, it's two audiences.
- **The pain is in their words**, taken from calls, emails or reviews, not ours.
- **Proof comes from a product file.** No proof means the status is `testing`, not `live`.
- **A test can change a row.** When a traction test shows that another message works better, update the row, set `last_reviewed`, and record the test ID in the history below.

## Message history

| Date | Row | Old message | New message | Because of test |
|---|---|---|---|---|
| {{YYYY-MM-DD}} | {{M1}} | {{old}} | {{new}} | {{results-log ID}} |
