# Batch 001 Notes

## Scope

First real Phase 2 batch for `startup_failures_mvp.csv`.

Target: 10 high-quality core early-stage cases.

Result: 10 cases added.

## Cases Added

- Sonar
- Binpress
- onetool
- PageRank Panda
- SimpleDirect
- Fundid
- Kite
- Flowtab
- RewardMe
- Hakeema

## Quality Rationale

This batch intentionally prioritizes founder postmortems, official/founder-adjacent sources, and detailed secondary reporting.

Source quality mix:

- Primary founder postmortem: Sonar, Binpress, onetool, PageRank Panda, SimpleDirect, RewardMe, Hakeema.
- Strong secondary with founder quotes or founder materials: Fundid, Kite, Flowtab.

## Cases Rejected Or Deferred

- Quibi: too late-stage and not core early-stage.
- Juicero: useful stress test, but too famous/late-stage for first MVP batch.
- Beepi: operationally useful, but too heavily funded for first MVP batch.
- Atrium: useful but hybrid and heavily funded; defer until dataset has more strict early-stage balance.
- FrontRow: source quality was not stable enough during initial check.
- Doppler: no strong shutdown source found quickly enough.

## Taxonomy Issues Found

- RewardMe needs `sales_cycle_too_long`, which exists in the roadmap but not yet in `taxonomy.md` v1.1 enum.
- Some cases combine fundraising dependency with deeper model issues. Need to avoid using fundraising as a lazy root cause.
- Kite is a strong example where timing, technical complexity, monetization, and product-market fit overlap.

## Next Recommendation

Before adding Batch 002, update taxonomy/schema to include:

- `sales_cycle_too_long`

Then collect the next 20 candidates with more emphasis on:

- marketplaces
- devtools
- consumer apps
- bootstrapped SaaS
