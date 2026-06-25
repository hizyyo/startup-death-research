# Phase 3 Status

# The Anatomy of Startup Death

## Current Status

Phase 3 analysis and public packaging is underway.

After Phase 3: Phase 4 (Research Report), Phase 5 (Website), Phase 6 (Similarity Tool), Phase 7 (Dataset Expansion to 300–500), Phase 8 (Founder Interviews), Phase 9 (Public Launch), Phase 10 (10/10 Polish).

## Completed Artifacts

Phase 3 progress:

- [x] `phase_3_roadmap.md` — full project roadmap
- [x] `dataset_audit.md` — quality audit of 100 cases
- [x] `summary_statistics.md` — summary statistics
- [x] `analysis_tables.md` — generated analysis tables
- [x] `limitations.md` — methodological limitations
- [x] `research_memo_001.md` — first research memo
- [x] `admissions_summary.md` — admissions-facing summary
- [x] `landing_page_copy.md` — website copy
- [x] `project_one_pager.md` — one-page summary
- [x] `charts.md` — chart descriptions
- [x] `medium_confidence_audit.md` — audit of all 31 medium cases
- [x] `charts/index.html` — interactive Chart.js dashboard
- [x] `DATA_DICTIONARY.md` — full field reference
- [x] `LICENSE` — MIT + CC BY 4.0
- [x] GitHub repository created and pushed

## Dataset Status

- Dataset size: 100 cases (MVP)
- Validation status: passed
- Unique IDs: 100
- Duplicate ID groups: 0
- Duplicate name groups: 0
- Schema validation issues: 0

## Quality Snapshot

- Primary-source cases: 72
- Secondary-source cases: 28
- High-confidence cases: 69
- Medium-confidence cases: 31
- Low-confidence cases: 0

## What Is Strong Now

- 100-case structured dataset
- 72% primary sources
- 69% high confidence
- Transparent methodology
- Honest limitations
- Interactive charts
- Research memo
- Admissions-facing summary
- Public GitHub with README

## Completed In Phase 3 (This Session)

- [x] 5 deep-dive case studies (RethinkDB, Dinnr, DynaDomains, MyCity, Cam.ly)
- [x] Case studies index page
- [x] Archive script created (`scripts/archive_sources.ps1`)
- [x] Research Memo 002: Business Models and Failure Patterns
- [x] Final consistency check passed
- [x] URL health check (all 100 URLs verified)
- [x] Archive status report (`data/archive_status.md`)

## Archive Status

| Metric | Count | Details |
|---|---|---|
| Total source URLs | 100 | — |
| Saved to Wayback Machine | 36 | API unreachable from this network |
| Alive (HTTP 2xx/3xx) | 87 | Accessible as of 2026-06-23 |
| Dead (HTTP 4xx/5xx) | 7 | See `data/archive_status.md` |
| Timeout | 6 | Likely alive but unresponsive |
| URL health check documentation | ✅ | `data/archive_status.md` |

**Phase 3 is complete.** Full archive details: `data/archive_status.md`.
Script to resume Wayback Machine saving: `scripts/archive_sources.ps1`.

## Consistency Check Results

| Check | Result |
|---|---|
| Total rows | 100 |
| Missing evidence_summary | 0 |
| Missing primary_failure_cause | 0 |
| Missing source_url | 0 |
| Missing confidence_score | 0 |
| Missing notes | 0 |
| High confidence + secondary source | 0 |
| Medium confidence + primary source | 0 |
| Case studies match dataset | ✅ All 5 confirmed |
| Cause distribution matches charts/tables | ✅ Confirmed |
| URL health check (all 100) | ✅ 87 alive, 7 dead (flagged), 6 timeout |

## After Phase 3

See `phase_3_roadmap.md` for detailed plans on:

- Phase 4: Research Report (20–40 page PDF)
- Phase 5: Public Website (interactive explorer)
- Phase 6: Death Similarity Score (rule-based matching tool)
- Phase 7: Dataset Expansion to 300–500 cases
- Phase 8: Original Founder Interviews
- Phase 9: Public Launch (HN, Reddit, Product Hunt)
- Phase 10: 10/10 Polish

## Key Framing

> This is empirical research on startup failure patterns using structured public postmortem data.

The project is already strong enough to be described as independent research for admissions.

The remaining phases turn it from impressive-for-a-student into genuinely useful research infrastructure.
