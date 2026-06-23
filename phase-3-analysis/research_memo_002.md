# Research Memo 002: Business Models and Failure Patterns

## The Anatomy of Startup Death

**Date:** 2026-06-23
**Dataset:** 100 cases, `data/startup_failures_mvp.csv`
**Author:** Eugene

---

## Question

How do failure patterns differ across business model types? Are there structural differences in *why* marketplaces, SaaS, consumer apps, and social products die?

---

## Method

All 100 cases were classified into 14 categories. Each case has a single `primary_failure_cause` (19 possible values). We compare the distribution of causes across the four categories with the largest sample sizes: SaaS (30), marketplace (17), consumer_app (12), and social (7). Smaller categories are discussed anecdotally.

---

## Results

### SaaS (30 cases)

| Primary Cause | Count | Share |
|---|---|---|
| product_market_fit_failure | 7 | 23% |
| no_urgent_pain | 4 | 13% |
| business_model_mismatch | 4 | 13% |
| operational_complexity | 3 | 10% |
| distribution_failure | 3 | 10% |
| platform_risk | 2 | 7% |
| competition_pressure | 2 | 7% |
| other (3 causes, 1 each) | 3 | 10% |
| too_broad_icp, fundraising_dependency, market_too_small | 2 | 7% |

**Pattern:** SaaS failures are overwhelmingly demand-side. 56% of SaaS cases failed from either product-market fit failure, no urgent pain, or business model mismatch. The SaaS companies in this dataset did not fail because they couldn't code — they failed because they could not find a paying audience large enough or willing enough to sustain the business.

Notable: only 2 SaaS cases failed from platform_risk. Despite SaaS's dependence on AWS, Stripe, and other platforms, dependency risk rarely appears as the *primary* cause.

Only 1 case failed from competition, suggesting that for early-stage SaaS, crowded markets are less deadly than building the wrong product.

### Marketplace (17 cases)

| Primary Cause | Count | Share |
|---|---|---|
| operational_complexity | 6 | 35% |
| marketplace_liquidity_failure | 3 | 18% |
| high_cac_bad_unit_economics | 2 | 12% |
| bad_pricing | 1 | 6% |
| product_market_fit_failure | 1 | 6% |
| other (4 causes, 1 each) | 4 | 24% |

**Pattern:** Marketplace failures are dominated by operational complexity — the difficulty of managing supply, demand, quality, trust, and logistics simultaneously. This is structurally different from SaaS. A SaaS company's core job is to build and sell software. A marketplace's core job is to orchestrate a two-sided system, and the operational burden is much higher.

Notable: only 1 marketplace failed from product_market_fit_failure, suggesting that marketplaces rarely fail from "nobody wants this" (the liquidity problem is visible early). Instead, they fail from "this is too hard to operate" — the system is running but cannot be sustained.

### Consumer App (12 cases)

| Primary Cause | Count | Share |
|---|---|---|
| distribution_failure | 3 | 25% |
| business_model_mismatch | 2 | 17% |
| weak_retention | 1 | 8% |
| product_market_fit_failure | 1 | 8% |
| too_broad_icp | 1 | 8% |
| fundraising_dependency | 1 | 8% |
| other (3 causes, 1 each) | 3 | 25% |

**Pattern:** Consumer apps die from distribution. Building a consumer app that people like is achievable; getting enough people to download and stay is the hard part. Unlike SaaS (where the customer pays you to exist) or marketplace (where ops complexity kills you), consumer apps face a zero-distribution default: if you cannot acquire users at scale, you die regardless of product quality.

### Social (7 cases)

| Primary Cause | Count | Share |
|---|---|---|
| trust_safety_failure | 3 | 43% |
| weak_retention | 2 | 29% |
| bad_pricing | 1 | 14% |
| product_market_fit_failure | 1 | 14% |

**Pattern:** Social products fail from trust and retention. The trust_safety_failure is unique to social — no SaaS or marketplace case lists this as the primary cause. Social networks depend on high-quality interactions among strangers, and when moderation, abuse, or spam go unmanaged, the network's value collapses. The weak_retention cases suggest that even when you get initial adoption, social products have a narrow window to become habitual before users churn.

### Smaller Categories (Observations)

**Healthtech (5):** 3 of 5 failed from `no_urgent_pain`. Healthtech founders overestimate consumer willingness to pay for wellness tools. People say they care about health; their purchasing behavior suggests otherwise.

**Hardware (3):** 2 of 3 failed from `technical_complexity`. Hardware startups cannot "iterate faster" the way software can — physical production constraints dominate.

**Fintech (5):** No dominant cause. Failures in fintech are spread across competition, no urgent pain, and too-broad-ICP. Fintech is a broad category without a single failure mode.

**Ecommerce (3):** 2 of 3 failed from `regulatory_or_legal_pressure`. Ecommerce operates in regulated spaces (food, supplements, cross-border trade), and compliance failure is a common blocker.

---

## Stage + Business Model Interaction

- **Bootstrapped startups** fail most often from `no_urgent_pain` (10 cases) and `business_model_mismatch` (6). Without external funding, there is no cushion for demand miscalculation — if customers do not pay immediately, the startup dies.
- **Seed-funded startups** fail most often from `product_market_fit_failure` (9 cases). Seed funding gives enough runway to build a real product, but not enough to force the market. These failures are slower and more painful than bootstrapped ones, but the root cause is the same: demand is insufficient.
- **Series A startups** fail most often from `operational_complexity` (4 cases). Series A companies have validated demand (they got this far) but die from the difficulty of scaling operations — hiring, process, coordination, legal complexity. This is a different class of failure altogether.

---

## Discussion

### 1. Demand is the dominant failure mode across all business models

Whether SaaS, marketplace, consumer app, or social, the most common failure cluster is demand-side. But the *type* of demand failure differs:

- SaaS: wrong audience, no urgency, bad pricing
- Marketplace: liquidity never forms, or operations overwhelm the founders
- Consumer app: cannot distribute
- Social: cannot retain or cannot moderate

This suggests that "our startup failed because we didn't have product-market fit" is often true but too general to be useful. A more precise taxonomy would distinguish between:

- **No demand at all** (nobody wants this)
- **Wrong demand** (people want it but won't pay)
- **Insufficient demand intensity** (people want it a little, not enough to retain or refer)
- **Demand exists but cannot be reached** (distribution blocked)
- **Demand exists but cannot be served** (operational complexity)

### 2. Operational complexity is more dangerous for marketplaces than for any other model

Marketplaces are the only category where operational complexity is the #1 cause. Building the software is the easy part; managing supply, demand, quality, trust, logistics, and fraud simultaneously at scale is the hard part. This finding aligns with academic marketplace research (Burtch et al., 2016) but is worth stating sharply: if you build a marketplace, your primary risk is not demand — it is operations.

### 3. Social is the only category where trust/safety is a primary failure mode

This should worry any social founder. Unlike pricing or distribution problems (which can be fixed iteratively), trust and safety failures can be existential overnight. Once users feel unsafe, they do not return.

### 4. Stage matters as much as category

The cross-tabulation of stage and failure cause reveals a pattern that is not obvious from category alone:

- Pre-revenue (bootstrapped): demand validation risk
- Early revenue (seed): product fit risk
- Scaled revenue (Series A): operational risk

Each stage has a "characteristic failure mode" that founders should proactively audit against.

---

## Limitations

- Sample sizes for smaller categories (healthtech, hardware, edtech) are too small for reliable inference.
- Category assignments are based on the startup's primary offering, but many startups spanned multiple categories (e.g., a SaaS-marketplace hybrid). These are difficult to classify cleanly.
- The dataset over-represents North America (71%) and English-language sources. Cultural differences in failure patterns are not captured.
- Survivorship bias in postmortem authorship: founders who write detailed postmortems may systematically differ from those who do not.

---

## Implications

1. **For founders:** If you are building a marketplace, your job is not to build software — it is to operate a two-sided system. If you are building a consumer app, your job is distribution. If you are building social, your job is trust, not features.

2. **For investors:** Evaluate startups differently by category. A marketplace that has demand but messy operations is not the same risk as a marketplace that has no demand. A consumer app with 10k happy users but no growth plan is failing at its core job.

3. **For researchers:** The stage/category interaction is worth deeper study. A dataset of 500+ cases could test whether the failure-mode-by-stage pattern generalizes.

---

## Next

Research Memo 003: "What Founders Say vs. What the Data Shows — comparing stated failure causes with structured analysis."
