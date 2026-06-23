# Charts & Visual Summary

# The Anatomy of Startup Death

Generated from `data/startup_failures_mvp.csv`. 100 cases.

## Chart 1: Primary Failure Cause Distribution

Recommended: horizontal bar chart, sorted descending.

```
product_market_fit_failure    ██████████████ 14
no_urgent_pain                ███████████   11
business_model_mismatch       █████████      9
operational_complexity        ████████       8
distribution_failure          ███████        7
regulatory_or_legal_pressure  ██████         6
platform_risk                 █████          5
technical_complexity          █████          5
marketplace_liquidity_failure ████           4
founder_conflict              ████           4
timing_problem                ████           4
market_too_small              ███            3
high_cac_bad_unit_economics   ███            3
weak_retention                ███            3
trust_safety_failure          ███            3
competition_pressure          ███            3
too_broad_icp                 ███            3
fundraising_dependency        ███            3
bad_pricing                   ██             2
```

Analysis: Demand-side failures dominate. PMF, no-urgent-pain, and business-model-mismatch together account for 34% of cases.

## Chart 2: Source Quality Distribution

Recommended: pie chart or split bar.

- primary: 72 (72%)
- secondary: 28 (28%)

Analysis: Strong evidence base. Most cases come from founder or official sources.

## Chart 3: Confidence Distribution

Recommended: pie chart.

- high: 69 (69%)
- medium: 31 (31%)

Analysis: Two-thirds of cases are high-confidence. Medium cases should be flagged transparently.

## Chart 4: Stage Distribution

Recommended: horizontal bar chart.

```
bootstrapped    ████████████████████████████████████████ 44
seed            ███████████████████████████████████      37
series_a        ██████████████                           15
pre_seed        ██                                        2
pre_series_b    ██                                        2
```

Analysis: 81% of cases are bootstrapped or seed. The dataset is genuinely early-stage.

## Chart 5: Region Distribution

Recommended: world map heatmap or horizontal bar chart.

```
North America     ███████████████████████████████████████████████████████████ 71
Europe            ████████████████                                           16
Asia-Pacific      ████                                                        4
Asia              ████                                                        4
Middle East       █                                                          1
Africa            █                                                          1
South America     █                                                          1
```

Analysis: North America is overrepresented. This is a dataset limitation.

## Chart 6: Category Distribution

Recommended: horizontal bar chart.

```
SaaS            ██████████████████████████████ 30
marketplace     █████████████████              17
consumer_app    ████████████                   12
social          ███████                         7
productivity    ██████                          6
healthtech      █████                           5
fintech         █████                           5
devtool         ████                            4
media           ████                            4
hardware        ███                             3
ecommerce       ███                             3
other           ██                              2
AI              █                               1
edtech          █                               1
```

Analysis: SaaS and marketplaces dominate. Hardware, AI, and edtech need more coverage.

## Chart 7: Category vs Primary Failure Cause

Recommended: grouped or stacked bar chart.

- SaaS → PMF (7), no-urgent-pain (4), business-model-mismatch (4)
- marketplace → operational-complexity (6), marketplace-liquidity-failure (3), high-CAC (2)
- social → trust-safety-failure (3), weak-retention (2)
- healthtech → no-urgent-pain (3), PMF (2)
- hardware → technical-complexity (2), regulatory (1)

Analysis: Marketplace failures cluster around operations. SaaS failures cluster around demand. Social failures cluster around trust and retention.

## Chart 8: Stage vs Primary Failure Cause

Recommended: stacked bar chart.

- bootstrapped → no-urgent-pain (10), business-model-mismatch (6), PMF (5)
- seed → PMF (9), platform-risk (3), weak-retention (3)
- series_a → operational-complexity (4), regulatory (2), high-CAC (2)

Analysis: Bootstrapped startups fail on willingness-to-pay. Funded startups fail on operations and scale execution.

## Chart 9: Source Quality by Confidence

Recommended: grouped bar chart.

- primary → high-confidence: 68, medium: 4
- secondary → high-confidence: 1, medium: 27

Analysis: Source quality and confidence are strongly correlated. Primary sources almost always yield high-confidence classifications.

## Chart 10: Combined Findings Visual

Recommended: simple text panel or infographic.

- Demand failure: 34 cases (PMF + no-urgent-pain + business-model-mismatch)
- Execution failure: 20 cases (operational + technical + distribution)
- Trust + legal + platform: 14 cases
- Other: 32 cases

Note: Percentages are rounded. Charts should include this note.
