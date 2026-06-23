# Phase 2 Status

# The Anatomy of Startup Death

## Current Status

Phase 2 MVP dataset collection is complete.

Current MVP dataset size: 100 cases.

Target MVP dataset size: 100 core early-stage startup failure cases.

Progress: 100%.

## Batch 001 Summary

Rows added: 10.

CSV validation: passed.

Unique IDs: 10.

Rows missing required core fields: 0.

## Batch 002 Summary

Rows added: 20.

CSV validation: passed.

Dataset size after batch: 30.

Unique IDs after batch: 30.

Rows missing required core fields after batch: 0.

Enum validation issues after batch: 0.

## Batch 003 Summary

Rows added: 20.

CSV validation: passed.

Dataset size after batch: 50.

Unique IDs after batch: 50.

Duplicate ID groups after batch: 0.

Duplicate name groups after batch: 0.

Required field issues after batch: 0.

Enum validation issues after batch: 0.

## Batch 004 Summary

Rows added: 20.

CSV validation: passed.

Dataset size after batch: 70.

Unique IDs after batch: 70.

Duplicate ID groups after batch: 0.

Duplicate name groups after batch: 0.

Required field issues after batch: 0.

Enum validation issues after batch: 0.

## Batch 005 Summary

Rows added: 20.

CSV validation: passed.

Dataset size after batch: 90.

Unique IDs after batch: 90.

Duplicate ID groups after batch: 0.

Duplicate name groups after batch: 0.

Required field issues after batch: 0.

Enum validation issues after batch: 0.

## Batch 006 Summary

Rows added: 10.

CSV validation: passed.

Dataset size after batch: 100.

Unique IDs after batch: 100.

Duplicate ID groups after batch: 0.

Duplicate name groups after batch: 0.

Required field issues after batch: 0.

Enum validation issues after batch: 0.

## Primary Failure Cause Distribution

- product_market_fit_failure: 14
- no_urgent_pain: 11
- business_model_mismatch: 9
- operational_complexity: 8
- distribution_failure: 7
- regulatory_or_legal_pressure: 6
- platform_risk: 5
- technical_complexity: 5
- marketplace_liquidity_failure: 4
- founder_conflict: 4
- timing_problem: 4
- market_too_small: 3
- high_cac_bad_unit_economics: 3
- weak_retention: 3
- trust_safety_failure: 3
- competition_pressure: 3
- too_broad_icp: 3
- fundraising_dependency: 3
- bad_pricing: 2

## Confidence Distribution

- high: 69
- medium: 31

## Source Quality Distribution

- primary: 72
- secondary: 28

## Stage Distribution

- bootstrapped: 44
- seed: 37
- series_a: 15
- pre_seed: 2
- pre_series_b: 2

## Region Distribution

- North America: 71
- Europe: 16
- Asia-Pacific: 4
- Asia: 4
- unknown: 2
- Middle East: 1
- Africa: 1
- South America: 1

## Category Distribution

- SaaS: 30
- marketplace: 17
- consumer_app: 12
- social: 7
- productivity: 6
- healthtech: 5
- fintech: 5
- devtool: 4
- media: 4
- hardware: 3
- ecommerce: 3
- other: 2
- AI: 1
- edtech: 1

## Source Quality Notes

- Primary/founder/official sources now dominate the dataset.
- Batch 003 intentionally accepted more secondary sources to cover underrepresented failure modes.
- Batch 004 rebalanced the dataset toward smaller companies, founder interviews, and founder-written shutdown posts.
- Batch 005 added more technical, healthtech, fintech, hardware, regulatory, and non-US coverage.
- Batch 006 completed the MVP dataset with targeted marketplace, regulatory, trust/safety, non-US, and hardware-adjacent cases.
- Cases with weak evidence should still be deferred instead of added.

## Quality Bar

Do not add cases only because they are famous.

Add a case only if:

- It fits the core early-stage scope.
- It has at least one reliable source.
- It has enough evidence to classify a primary failure cause.
- Unknown fields are marked as `unknown`, not guessed.
- The row improves the analytical value of the dataset.

## Next Phase Target

Move from Phase 2 collection to Phase 3 analysis and packaging.

Recommended emphasis:

- run a full dataset audit
- identify questionable sources and coding uncertainty
- create summary statistics and charts
- write public methodology and limitations
- prepare GitHub README
- prepare project landing page copy
- create a first research memo from the 100-case dataset

Audit should pay special attention to:

- source URLs that may need archival backups
- medium-confidence cases
- late-stage or borderline scope cases
- category imbalance around PMF and no-urgent-pain
- regional imbalance toward North America

Do not continue adding cases until Phase 3 packaging is done unless a case clearly fixes a known research gap.
