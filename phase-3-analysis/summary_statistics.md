# Summary Statistics

# The Anatomy of Startup Death

## Dataset Snapshot

- Cases: 100
- Target: early-stage startup failures
- Format: CSV
- Main dataset: `data/startup_failures_mvp.csv`
- Validation status: passed

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

## Early Observations

- Demand-side failure dominates the dataset.
- `product_market_fit_failure`, `no_urgent_pain`, and `business_model_mismatch` together account for 34 cases.
- Execution problems are also meaningful: `operational_complexity`, `technical_complexity`, and `distribution_failure` together account for 20 cases.
- Legal, platform, and trust-related failures are less common but analytically important.
- Marketplace-specific failure is present but still underrepresented relative to how common marketplace startups are in startup history.

## Confidence Distribution

- high: 69
- medium: 31

Interpretation:

Most cases are strong enough for analysis. Medium-confidence cases should be flagged transparently in public outputs.

## Source Quality Distribution

- primary: 72
- secondary: 28

Interpretation:

The dataset is mostly based on founder or official evidence, which strengthens the admissions/research value of the project.

## Stage Distribution

- bootstrapped: 44
- seed: 37
- series_a: 15
- pre_seed: 2
- pre_series_b: 2

Interpretation:

The dataset is meaningfully early-stage. A minority of Series A and pre-Series B cases are included because they provide especially clear evidence for specific failure mechanisms.

## Region Distribution

- North America: 71
- Europe: 16
- Asia-Pacific: 4
- Asia: 4
- unknown: 2
- Middle East: 1
- Africa: 1
- South America: 1

Interpretation:

North America is heavily overrepresented. This should be listed as a limitation, not hidden.

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

Interpretation:

The dataset is strongest for SaaS, marketplaces, consumer apps, and social products. Hardware, AI, edtech, and infrastructure need more coverage in future versions.

## Research Angles Worth Exploring

- How often do founders describe failure as lack of demand versus lack of execution?
- Are bootstrapped startups more likely to fail from distribution and willingness-to-pay problems?
- Are VC-backed startups more likely to fail from operational complexity, fundraising dependency, or growth-before-retention?
- Do marketplace failures cluster around liquidity, operational complexity, or business model mismatch?
- How often is `platform_risk` visible only after the company is already dependent on another ecosystem?
