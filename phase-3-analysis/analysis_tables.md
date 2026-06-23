# Analysis Tables

# The Anatomy of Startup Death

Generated from `data/startup_failures_mvp.csv`.

Dataset size: 100 cases.

## Primary Failure Cause Distribution

| Value | Count | Share |
|---|---:|---:|
| product_market_fit_failure | 14 | 14% |
| no_urgent_pain | 11 | 11% |
| business_model_mismatch | 9 | 9% |
| operational_complexity | 8 | 8% |
| distribution_failure | 7 | 7% |
| regulatory_or_legal_pressure | 6 | 6% |
| platform_risk | 5 | 5% |
| technical_complexity | 5 | 5% |
| marketplace_liquidity_failure | 4 | 4% |
| founder_conflict | 4 | 4% |
| timing_problem | 4 | 4% |
| market_too_small | 3 | 3% |
| high_cac_bad_unit_economics | 3 | 3% |
| weak_retention | 3 | 3% |
| trust_safety_failure | 3 | 3% |
| competition_pressure | 3 | 3% |
| too_broad_icp | 3 | 3% |
| fundraising_dependency | 3 | 3% |
| bad_pricing | 2 | 2% |

## Source Quality Distribution

| Value | Count | Share |
|---|---:|---:|
| primary | 72 | 72% |
| secondary | 28 | 28% |

## Confidence Distribution

| Value | Count | Share |
|---|---:|---:|
| high | 69 | 69% |
| medium | 31 | 31% |

## Stage Distribution

| Value | Count | Share |
|---|---:|---:|
| bootstrapped | 44 | 44% |
| seed | 37 | 37% |
| series_a | 15 | 15% |
| pre_seed | 2 | 2% |
| pre_series_b | 2 | 2% |

## Region Distribution

| Value | Count | Share |
|---|---:|---:|
| North America | 71 | 71% |
| Europe | 16 | 16% |
| Asia-Pacific | 4 | 4% |
| Asia | 4 | 4% |
| unknown | 2 | 2% |
| Middle East | 1 | 1% |
| Africa | 1 | 1% |
| South America | 1 | 1% |

## Category Distribution

| Value | Count | Share |
|---|---:|---:|
| SaaS | 30 | 30% |
| marketplace | 17 | 17% |
| consumer_app | 12 | 12% |
| social | 7 | 7% |
| productivity | 6 | 6% |
| healthtech | 5 | 5% |
| fintech | 5 | 5% |
| devtool | 4 | 4% |
| media | 4 | 4% |
| hardware | 3 | 3% |
| ecommerce | 3 | 3% |
| other | 2 | 2% |
| AI | 1 | 1% |
| edtech | 1 | 1% |

## Category By Primary Failure Cause

| Category | Top Primary Failure Causes |
|---|---|
| SaaS | product_market_fit_failure (7); no_urgent_pain (4); business_model_mismatch (4) |
| marketplace | operational_complexity (6); marketplace_liquidity_failure (3); high_cac_bad_unit_economics (2) |
| consumer_app | distribution_failure (3); business_model_mismatch (2); weak_retention (1) |
| social | trust_safety_failure (3); weak_retention (2); bad_pricing (1) |
| productivity | founder_conflict (2); product_market_fit_failure (2); technical_complexity (1) |
| healthtech | no_urgent_pain (3); product_market_fit_failure (2) |
| fintech | competition_pressure (1); no_urgent_pain (1); too_broad_icp (1) |
| devtool | product_market_fit_failure (2); business_model_mismatch (1); timing_problem (1) |
| media | market_too_small (1); timing_problem (1); founder_conflict (1) |
| hardware | technical_complexity (2); regulatory_or_legal_pressure (1) |
| ecommerce | regulatory_or_legal_pressure (2); no_urgent_pain (1) |
| other | operational_complexity (1); too_broad_icp (1) |
| AI | regulatory_or_legal_pressure (1) |
| edtech | marketplace_liquidity_failure (1) |

## Stage By Primary Failure Cause

| Stage | Top Primary Failure Causes |
|---|---|
| bootstrapped | no_urgent_pain (10); business_model_mismatch (6); product_market_fit_failure (5); distribution_failure (4); marketplace_liquidity_failure (3) |
| seed | product_market_fit_failure (9); platform_risk (3); weak_retention (3); bad_pricing (2); too_broad_icp (2) |
| series_a | operational_complexity (4); regulatory_or_legal_pressure (2); high_cac_bad_unit_economics (2); competition_pressure (2); distribution_failure (1) |
| pre_seed | founder_conflict (2) |
| pre_series_b | trust_safety_failure (1); fundraising_dependency (1) |

## Source Quality By Confidence

| Source Quality | Confidence Breakdown |
|---|---|
| primary | high (68); medium (4) |
| secondary | high (1); medium (27) |

## Notes

- Shares are rounded to whole percentages.
- Tables are descriptive, not predictive.
- Category and cause assignments are structured interpretations based on public evidence.
