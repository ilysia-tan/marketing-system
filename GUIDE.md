# Build guide

We build this one step at a time. Each step ends with something you can use at work *and* a public version that's safe to share.

**What goes where:** the canvas is the internal company map and stays in `private/`. The skills, agents and templates built from it go to GitHub.

**The golden rule:** the public repo holds the *method* (structure, templates, prompts, rules). Your company's *facts* (products, clients, competitors, numbers, results) stay in `private/` or in a separate private repo. Run `./scripts/check-ip.sh` before every commit.

## What's safe to publish

| Public (method) | Private (company facts) |
|---|---|
| Folder structure and how the pieces connect | Product names, features, pricing |
| Blank templates (brand core, product file, results log) | Filled-in brand, product and messaging files |
| Agent and skill instructions | Competitor tracker contents |
| Channel playbooks built from public sources (e.g. PDPA rules) | Results log entries, campaign numbers |
| Templates with `{{product_name}}`-style blanks | Prospect lists, CRM exports, client names |
| Lessons written as general rules | Lessons that reveal a client, deal or figure |

## Steps

- [x] **0. Pull in the canvas and set up guardrails** — `private/canvas.md` (the full internal company canvas, never published), `.gitignore`, `private/denylist.txt`, `scripts/check-ip.sh`
- [x] **1. Repo home and name** — its own public repo, `marketing-system`; templates use `{{placeholders}}`, no example company
- [x] **2. Shared memory templates** — `templates/context/`: brand core and expressions, product file, competitor tracker, messaging matrix. `./scripts/setup-context.sh <product-slugs>` copies them into git-ignored `context/` to fill in
    - [x] **2a. Brand split into five parts** — philosophy, personas, UVP, voice and writing, design system; `core.md` is the index and audit. First skill: `skills/brand-writer/`
    - [ ] **2b. Approve the brand drafts** — decide the 8 known inconsistencies in `context/brand/core.md`, confirm beliefs and the "we never" list, validate personas with real conversations
    - [x] **2c. Product files** — five products drafted from factsheets, Slack and Drive; services in `context/services/`
    - [x] **2d. Product information flow** — `docs/product-information-flow.md`: sources → compiler → product folders → competitor research, website, content, campaigns, channel testing
- [ ] **3. Results log** — one format for every test; nothing else can learn without it
- [ ] **4. First channel playbook** — LinkedIn, Singapore, from public sources
- [ ] **5. Traction manager team** — the six agents as Claude skills, with handoff templates
- [ ] **6. First run by hand** — run one traction test end to end at work (private), then write up the method (public)
- [ ] **7. Execution skills** — one at a time: proposals, website, prospecting, social, visual
- [ ] **8. Public README and launch** — diagram, quickstart, link from your profile README
- [ ] **9. Automate the router** — scheduled weekly review, then n8n/LangGraph only once it's stable
