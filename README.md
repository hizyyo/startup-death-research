# The Anatomy of Startup Death

A structured public dataset and taxonomy of early-stage startup failures.

## Overview

The Anatomy of Startup Death is an independent research project that collects, classifies, and analyzes public startup failure postmortems.

The project turns scattered founder postmortems, shutdown announcements, interviews, and reported failure stories into a structured dataset that can be studied systematically.

The goal is not to mock failed founders or predict startup death. The goal is to understand recurring patterns in early-stage startup failure using transparent evidence and a consistent taxonomy.

## Dataset Snapshot

Current MVP dataset:

- 100 startup failure cases
- 72 primary-source cases
- 69 high-confidence cases
- 31 medium-confidence cases
- 0 low-confidence cases
- 0 schema validation issues

Main dataset:

`data/startup_failures_mvp.csv`

## Research Question

What patterns emerge when early-stage startup failures are classified using structured public postmortem evidence?

## Why This Project Exists

Startup failure is usually discussed through anecdotes.

Founders write postmortems. Investors write essays. Journalists cover shutdowns. But these stories are rarely converted into structured data.

This project asks whether those public failure narratives can be organized into a dataset that makes patterns easier to see.

## Methodology

Each case is selected from public evidence and coded using a consistent schema.

Preferred sources include:

- founder postmortems
- founder interviews
- official shutdown announcements
- detailed reporting with founder quotes
- legal or regulatory sources for legal cases

Each row includes:

- startup description
- source URL
- source type
- source quality
- founding and failure year where available
- country and region
- startup category
- customer type
- business model
- stage at failure
- funding raised where available
- stated failure cause
- primary classified failure cause
- secondary failure causes
- evidence summary
- confidence score

## Failure Taxonomy

The project uses a structured taxonomy of startup failure causes.

Examples include:

- product-market fit failure
- no urgent pain
- distribution failure
- business model mismatch
- weak retention
- high CAC / bad unit economics
- marketplace liquidity failure
- operational complexity
- technical complexity
- platform risk
- regulatory or legal pressure
- trust and safety failure
- founder conflict
- timing problem
- market too small

The taxonomy is documented in:

`phase-1-foundation/taxonomy.md`

## Early Findings

The first 100 cases suggest that startup death is usually not a single dramatic event.

It is more often a slow mismatch between what founders build, what customers urgently need, what the business model can support, and what the company can operationally execute.

Top primary failure causes in the MVP dataset:

- product-market fit failure: 14
- no urgent pain: 11
- business model mismatch: 9
- operational complexity: 8
- distribution failure: 7
- regulatory or legal pressure: 6

More detailed analysis is available in:

`phase-3-analysis/research_memo_001.md`

## Data Dictionary

`DATA_DICTIONARY.md` — describes every field in the dataset with allowed values and examples.

## Charts

`charts/index.html` — interactive Chart.js dashboard with 10 charts, open in any browser.

## Analysis Files

- `phase-3-analysis/summary_statistics.md`: summary statistics from the 100-case dataset
- `phase-3-analysis/analysis_tables.md`: generated analysis tables
- `phase-3-analysis/dataset_audit.md`: quality audit and known risks
- `phase-3-analysis/limitations.md`: methodological limitations
- `phase-3-analysis/research_memo_001.md`: first research memo
- `phase-3-analysis/admissions_summary.md`: admissions-facing project summary
- `phase-3-analysis/landing_page_copy.md`: website landing page copy
- `phase-3-analysis/phase_3_status.md`: current Phase 3 status
- `phase-3-analysis/project_one_pager.md`: one-page project summary
- `phase-3-analysis/charts.md`: chart descriptions with data
- `phase-3-analysis/medium_confidence_audit.md`: audit of medium-confidence cases

## License

`LICENSE` — MIT for code, CC BY 4.0 for dataset and documentation.

## Project Structure

```text
startup-death-research/
  data/
    startup_failures_mvp.csv         # Main 100-case dataset
    batch_001_notes.md               # Batch collection notes
    batch_002_notes.md
    batch_003_notes.md
    batch_004_notes.md
    batch_005_notes.md
    batch_006_notes.md
    phase_2_status.md                # Phase 2 progress tracker
  phase-1-foundation/
    positioning.md                   # Project positioning
    methodology.md                   # Inclusion criteria & coding process
    taxonomy.md                      # Failure taxonomy v1.2
    dataset_schema.md                # Schema v1.2 with enums
    source_pipeline.md               # Source collection process
    phase_1_completion_checklist.md
  phase-3-analysis/
    phase_3_roadmap.md               # Phase 3 plan and quality bar
    dataset_audit.md                 # Quality audit of 100 cases
    summary_statistics.md            # Summary stats and observations
    analysis_tables.md               # Generated analysis tables
    limitations.md                   # Methodological limitations
    research_memo_001.md             # First research findings memo
    admissions_summary.md            # Admissions-facing project summary
    landing_page_copy.md             # Website landing page copy
    phase_3_status.md                # Phase 3 progress tracker
    project_one_pager.md             # One-page project summary
    charts.md                        # Chart descriptions with data
    medium_confidence_audit.md       # Audit of medium-confidence cases
  charts/
    index.html                       # Interactive Chart.js dashboard
  DATA_DICTIONARY.md                 # Full field reference
  LICENSE                            # MIT + CC BY 4.0
  .gitignore
  README.md
```

## Limitations

This dataset is not comprehensive.

It only includes failures with public evidence. That creates bias toward startups whose founders wrote postmortems, gave interviews, or received media coverage.

North American startups are overrepresented. SaaS, marketplaces, consumer apps, and social products are also overrepresented.

Failure causes are often multi-causal. The `primary_failure_cause` field is a structured interpretation based on available evidence, not an objective fact.

The project should be read as a structured study of public startup failure narratives, not a universal explanation of all startup failure.

## Status

- Phase 1: foundation and taxonomy complete
- Phase 2: 100-case MVP dataset complete
- Phase 3: analysis and public packaging in progress

## Next Steps

- [x] build 100-case MVP dataset
- [x] dataset validation
- [x] medium-confidence audit
- [x] interactive charts dashboard
- [x] data dictionary
- [x] license
- [ ] archive important source URLs
- [ ] write additional research memos
- [ ] improve non-US coverage in future versions
- [ ] build a small public website or interactive dataset browser

## Suggested Citation

If referencing this project, describe it as:

> The Anatomy of Startup Death, a structured public dataset and taxonomy of 100 early-stage startup failure cases based on public postmortem evidence.
