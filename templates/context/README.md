# Shared memory

Every agent and skill in this system **reads these files before it writes anything**. They replace re-briefing: write a fact here once, and every output uses it.

Run `./scripts/setup-context.sh` to copy these templates into `context/`, then fill them in. `context/` is git-ignored, so your company's facts stay on your machine. This folder (`templates/context/`) only holds blank templates and is safe to publish.

## What's here

| File | Holds | Changes |
|---|---|---|
| `brand/core.md` | Index of the brand, its four-line summary, audit checklist, change log | Rarely, and only with approval |
| `brand/philosophy.md` | Mission, beliefs, values as behaviour, hard limits, facts we repeat | Rarely |
| `brand/personas.md` | Who the brand serves (P1, P2…) and who it doesn't | When real conversations show something new |
| `brand/uvp.md` | Why us, proof points, pillars, the pitch at three lengths | Quarterly test |
| `brand/voice-and-writing.md` | Voice, tone, words, how each format is built, before-and-after edits | Every time you correct an output |
| `brand/design-system.md` | Colour, type, components, motion, imagery; mirrors the code | When the code or design library changes |
| `brand/expressions.md` | Campaign themes and seasonal angles | Often; each one has an end date |
| `products/_product.md` | One file per product: problem, buyer, proof, objections | When the product or its proof changes |
| `positioning/competitors.md` | Who else the buyer considers, and how you differ | Quarterly refresh |
| `positioning/messaging-matrix.md` | What to say to each audience, with proof | Quarterly, or when a test changes it |

## Reading order for a skill

1. `brand/core.md`: always
2. The brand file the task needs: `voice-and-writing.md` for words, `design-system.md` for visuals
3. `brand/personas.md` and `brand/uvp.md`: for anything a buyer will read
4. The product file(s) the task is about
5. `positioning/messaging-matrix.md`: the row for the persona
6. `brand/expressions.md`: only if the task belongs to a live campaign
7. `positioning/competitors.md`: only for comparisons, battlecards or proposals
8. `brand/philosophy.md`: for long-form, or when a judgement call comes up

## Rules for every file

- **Facts need a source.** Mark each claim with where it came from (a customer call, a case study, the product team). A claim with no source is a guess, so label it `[unverified]`.
- **Keep the header up to date.** `owner`, `last_reviewed` and `status` tell the monthly brand audit and the quarterly positioning refresh what to check.
- **Write it down or it doesn't exist.** If a fact lives only in someone's head, no agent can use it.
- **Placeholders look like `{{this}}`.** A skill that finds an unfilled `{{placeholder}}` should stop and ask, not invent a value.
