# Project Roadmap

# The Anatomy of Startup Death

## Full Vision

Goal: build the best public research project on early-stage startup failure.

Current: 100-case validated MVP dataset with analysis and packaging.

Target: 300–500 cases with research report, website, similarity tool, and public impact.

---

## Current Status By Phase

| Phase | Status |
|---|---|
| Phase 1: Foundation | Complete |
| Phase 2: 100-case MVP Dataset | Complete |
| Phase 3: Analysis & Packaging | In progress |
| Phase 4: Research Report | Not started |
| Phase 5: Public Website | Not started |
| Phase 6: Death Similarity Score | Not started |
| Phase 7: Dataset Expansion | Not started |
| Phase 8: Founder Interviews | Not started |
| Phase 9: Public Launch | Not started |
| Phase 10: 10/10 Polish | Not started |

---

## Quality Bar (Applies To All Phases)

Every artifact must show:

- clear research question and intellectual motivation
- transparent methodology with known limitations
- structured dataset design with validation
- evidence-based claims, not speculation
- restraint around overclaiming
- honest confidence and uncertainty reporting

The project must look like independent research, not content curation.

---

## Phase 3: Analysis & Packaging

### Goal

Turn the 100-case MVP dataset into a credible public research project.

Phase 3 is about making existing work understandable, auditable, and impressive to an outside reader.

### Completed

- Public README
- Data Dictionary
- Dataset audit
- Summary statistics
- Analysis tables (generated from CSV)
- Limitations document
- First research memo
- Admissions summary
- Interactive charts dashboard (Chart.js)
- Medium-confidence audit
- License (MIT + CC BY 4.0)
- .gitignore
- GitHub repository created and pushed

### Remaining

- Deep-dive case studies (5–10 mini research papers)
- Archive all source URLs in Wayback Machine
- Second research memo (e.g., Marketplaces vs SaaS)
- Final validation and consistency check

### Definition Of Done

Phase 3 is complete when:

- README stands alone on GitHub
- Dataset has analysis tables and charts
- Project has honest limitations
- At least one research memo exists
- Medium-confidence cases are audited
- Admissions officer can understand why this is serious research
- Validation still passes

---

## Phase 4: Research Report

### Goal

Write a 20–40 page PDF research report that reads like serious empirical research.

### Structure

1. Abstract
2. Introduction: survivor bias in startup education
3. Related work and existing resources
4. Dataset construction methodology
5. Failure taxonomy
6. Quantitative findings and distributions
7. Failure archetypes
8. Case studies (5–10 deep dives)
9. Limitations
10. Conclusion and future work
11. Appendix: dataset schema and data dictionary

### Deliverable

`research_report.pdf` and a web version.

### Quality Bar

- report must feel like research, not a blog post
- every major claim must point back to the dataset
- case studies must be mini research papers, not motivational stories

---

## Phase 5: Public Website

### Goal

Build an interactive website so anyone can explore the dataset without reading a report.

### Pages

- Home: hero, stats, top causes, CTAs
- Dataset Explorer: search, filter by category/cause/model/stage/region
- Taxonomy: failure causes with definitions, symptoms, examples
- Findings: charts and breakdowns
- Case Studies: deep-dive pages
- Death Similarity Score (if Phase 6 is ready)
- Methodology: inclusion criteria, coding process, limitations
- Download: CSV, data dictionary

### Tech Stack Options

- Next.js or Astro for the site
- Chart.js or Observable for charts
- GitHub Pages or Vercel for hosting
- Static JSON from CSV for data

### Quality Bar

- site must look like research infrastructure, not a blog
- dataset must be explorable in under 30 seconds
- mobile-friendly

---

## Phase 6: Death Similarity Score

### Goal

Build an interactive tool where a founder enters their startup profile and sees similar failed startups.

### Approach

Rule-based weighted scoring using structured fields:

- same category: +20
- same business model: +15
- same customer type: +10
- same GTM channel: +15
- same pricing model: +10
- similar ICP breadth: +15
- similar retention symptoms: +25
- similar CAC/funding dependency: +15
- similar marketplace/platform risk: +15

### Output

- list of similar failed startups
- shared risk factors
- relevant failure patterns
- recommended case studies
- confidence level
- disclaimer (not predictive)

### Framing

Correct: > A similarity-based research tool that compares a startup profile with historical failed startups.

Incorrect: > AI predicts if your startup will die.

### Advanced Version (later)

- weighted categorical matching
- TF-IDF on evidence summaries
- sentence embeddings on descriptions
- clustering of failure archetypes

---

## Phase 7: Dataset Expansion (100 → 300–500)

### Goal

Scale from 100 to 300–500 cases while maintaining or improving source quality.

### Strategy

Keep all existing 100 cases as the core MVP. Do not remove them. Add new cases in structured batches.

### Planned Batches

| Batch | Cases | Focus |
|---|---|---|
| MVP | 100 | Completed. Foundation dataset. |
| Batch 101–200 | 100 | Wider geographic coverage (Latin America, Africa, Southeast Asia). More hardware, deeptech, biotech, infrastructure. More small-marketplace liquidity cases. More regulatory and legal cases. |
| Batch 201–300 | 100 | Previously deferred moderate-confidence cases with improved sources. More founder-interview cases. More bootstrapped solo-founder cases. More pre-2020 historical cases. |
| Batch 301–400 | 100 | Deep niche categories (e.g., govtech, climate, creator tools). Non-English sources translated or summarized. |
| Batch 401–500 | 100 | Polish and fill remaining gaps. Very small/micro-startup cases. More data-rich sources for existing cases. |

### Quality Control For Expansion

- each batch must pass the same schema validation as the MVP
- each batch must have at least 60% primary-source cases
- each batch must have at least 60% high-confidence cases
- no batch may be added without batch notes explaining selection
- after each 50 new cases, full re-audit of the combined dataset
- if source quality drops below MVP standards, slow down and re-evaluate

### Schema Stability

The dataset schema is stable at v1.2.

New fields may be added in v2.0, but no existing fields will be removed or renamed without a migration.

Possible v2.0 additions:

- `shutdown_type` (hard shutdown, acquihire, asset sale, product pivot, paused)
- `case_type` (core, borderline, stress-test)
- `market_type` (new market, existing market, re-segmented market)
- `founder_previous_exits` (first-time, serial, previous failure)
- `primary_source_archive_url` (Wayback Machine link)

### Timeline Flexibility

Expansion to 500 is the final goal, not an immediate deadline.

Each batch of 100 should be collected, validated, and documented before the next batch starts.

Target pace: 100 new cases per month at full speed, but quality takes priority over speed.

---

## Phase 8: Founder Interviews

### Goal

Add original primary-source cases by interviewing founders of failed startups.

### Process

- identify 20 founders whose startups are in the dataset
- send short, respectful interview requests
- conduct 5–10 structured interviews
- add interview-based cases with marked source type
- ask for permission before publishing any names or quotes

### Interview Questions

1. What did the startup build?
2. Who was the target customer?
3. What was the business model?
4. What was the main GTM strategy?
5. When did you first notice something was not working?
6. What were the clearest warning signs?
7. What do you believe was the main reason the startup failed?
8. Looking back, was there a deeper reason?
9. Did pricing, retention, distribution, or fundraising play a major role?
10. What would you tell a founder building something similar today?

### Quality Bar

- original interviews make the project genuinely unique
- mark interview cases separately in the dataset
- be respectful. Founders who failed are not content.

---

## Phase 9: Public Launch

### Goal

Make the project visible and get real feedback.

### Channels

- Hacker News
- LinkedIn
- Reddit (r/startups, r/Entrepreneur, r/SaaS)
- Product Hunt
- Email to accelerators (YC, Techstars, etc.)
- Email to entrepreneurship professors
- Ask founders in the dataset for feedback

### Definition Of Done

- real people use it, cite it, or give feedback
- you can show admissions officers public traction (comments, GitHub stars, shares)

---

## Phase 10: 10/10 Polish

### Goal

Make the project exceptional.

### Checklist

- [ ] 300–500 cases
- [ ] reproducible analysis notebooks
- [ ] versioned dataset releases
- [ ] methodology changelog
- [ ] contributor guide
- [ ] expert review from a founder, VC, or professor
- [ ] annual research report
- [ ] public dataset citations
- [ ] beautiful interactive website
- [ ] working similarity tool
- [ ] original founder interviews
- [ ] clean GitHub with active maintenance

### Final Framing

> This is empirical research on startup failure patterns using structured public postmortem data.
