# How product information flows

Product facts change in engineering first. This flow keeps marketing in step with what has actually shipped, and makes every downstream job (competitor research, the website, content, campaigns, channel tests) read from one place instead of from memory or old decks.

```
 SOURCES                 COMPILE                  SINGLE SOURCE           USES
 Git repos        ─┐
 Dev team in Slack ─┼──► Factsheet compiler ───► Product folders ───┬──► Competitor research
 Drive and decks  ─┤     (labels every claim)    (one per product)  ├──► Website
 Market signals   ─┘          │                        ▲            ├──► Content opportunities
                              ▼                        │            ├──► Campaigns
                   Questions for the product owner     │            └──► Channel testing
                                                       └── results and new questions flow back
```

## When it runs

- **A release is tagged in Git:** recompile that product's folder.
- **Weekly:** sweep the product Slack channels for new answers, decisions and leads.
- **Before anything goes out:** a campaign, a web page or a proposal checks its claims against the folder.

## 1. Sources

| Source | What it gives | Trust level |
|---|---|---|
| Git repos | What is actually built: code, READMEs, docs, release tags | Highest: the code is the truth |
| Dev team in Slack | Owner answers, decisions, status, leads | High, once confirmed by the product owner |
| Drive and decks | Brochures, proposals, positioning documents | Lower: decks often run ahead of the code |
| Market signals | Competitor sites, SEO/AEO tools, sales calls | Context, not product fact |

## 2. Compile

The compiler (a Claude skill) reads the sources and labels every claim twice:

- **How well is it supported?** Verified · Partially true · Roadmap · Unsupported
- **Where may it be used?** External · Internal only · Do not use

Anything it can't prove becomes a question for the product owner, not a guess.

## 3. Product folders: the single source

`context/products/<product>.md`, one per product (template: `templates/context/products/_product.md`). Each holds the one-liner, problem, personas, verified capabilities, proof and case studies with naming rules, objections, commercials, and a pointer to the full factsheet.

## 4. Uses

| Use | Reads from the folder | Produces | Check before it goes out |
|---|---|---|---|
| **Competitor research** | Verified capabilities, proof | Competitor tracker, battlecards, 2×2 maps | Only claim what's Verified and External |
| **Website** | Everything marked External | Claims audit of live pages, page updates, new pages for what shipped | No "Do not use" claim on any page; client naming rules |
| **Content opportunities** | What shipped recently + SEO/AEO keyword gaps | Article, post and FAQ ideas, ranked | Each idea names its persona and product |
| **Campaigns** | The persona × product row in the messaging matrix | A campaign brief: message, proof, CTA, pass mark | Proof is External; pass mark set before launch |
| **Channel testing** | Campaign brief | A traction test, run through the traction loop | Result logged in one format |

## 5. Feedback

Results go into the results log. What a test learns updates the messaging matrix and the channel playbook; new questions from buyers go back to the product owner, and answers return through the next compile.
