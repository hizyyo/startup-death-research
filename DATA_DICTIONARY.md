# Data Dictionary

# The Anatomy of Startup Death

## About

This document describes every field in `data/startup_failures_mvp.csv`.

The dataset contains 100 early-stage startup failure cases, each coded using a consistent schema.

---

## Field Definitions

### `id`

Unique identifier for each case.

Format: `fs_NNNN` (e.g., `fs_0001`, `fs_0100`).

Type: string. Required.

### `name`

Startup name. The name used at the time of failure; not necessarily the original name.

Type: string. Required.

### `description`

One-sentence description of what the startup did.

Type: string. Required. Max ~200 characters.

### `website_url`

URL of the startup's website. Often empty because most failed startups take their sites offline.

Type: URL or empty. Optional.

### `source_url`

Main source for failure information. This is the primary piece of evidence used for classification.

Type: URL. Required.

### `additional_sources`

Supplementary source URLs, separated by semicolons.

Type: string (semicolon-delimited URLs). Optional.

### `is_core_early_stage_case`

Whether the case fits the core early-stage dataset scope.

Allowed values: `yes`, `no`.

Use `yes` for pre-seed, seed, bootstrapped, post-seed, or pre-Series B startups.

Use `no` for stress-test cases or famous late-stage failures.

Type: enum. Required.

### `source_type`

Category of the main evidence source.

Allowed values:

| Value | Meaning |
|---|---|
| `founder_postmortem` | Written by founder explaining the failure |
| `founder_interview` | Interview with founder discussing the failure |
| `employee_interview` | Interview with employee |
| `official_shutdown_announcement` | Company's shutdown letter or press release |
| `investor_analysis` | Analysis by an investor |
| `news_article` | Journalistic coverage |
| `startup_database` | Entry on startup failure database |
| `hacker_news_discussion` | Hacker News thread |
| `product_hunt_post` | Product Hunt post |
| `podcast_transcript` | Transcript of podcast episode |
| `archived_website` | Archived version of startup's website |
| `legal_or_regulatory_source` | Legal filing or regulatory notice |
| `other` | Other source type |

Type: enum. Required.

### `source_quality`

Reliability of the main source.

Allowed values:

| Value | Meaning |
|---|---|
| `primary` | Source created by the founder or startup directly |
| `secondary` | Source created by a third party, but includes founder testimony or reliable reporting |
| `tertiary` | Speculative or heavily mediated source |

Type: enum. Required.

### `founded_year`

Year the startup was founded. May be approximate.

Type: integer or empty. Optional.

### `failed_year`

Year the startup shut down, became inactive, or was acqui-hired.

Type: integer or empty. Optional.

### `country`

Country where the startup was based or where its main market was.

Type: string or empty. Optional.

### `region`

Geographic region.

Allowed values: `North America`, `Europe`, `Asia`, `Asia-Pacific`, `Middle East`, `Africa`, `South America`, `unknown`.

Type: string. Optional.

### `category`

Startup category or industry.

Allowed values: `SaaS`, `marketplace`, `consumer_app`, `social`, `fintech`, `healthtech`, `devtool`, `hardware`, `AI`, `ecommerce`, `edtech`, `media`, `productivity`, `infrastructure`, `other`.

Type: enum. Required.

### `customer_type`

Main customer segment.

Allowed values: `B2B`, `B2C`, `B2B2C`, `developer`, `SMB`, `enterprise`, `prosumer`, `consumer`, `other`.

Type: enum. Required.

### `business_model`

Primary business model.

Allowed values:

| Value | Meaning |
|---|---|
| `subscription` | Recurring subscription payments |
| `transaction_fee` | Per-transaction fee |
| `commission` | Commission on facilitated transactions |
| `advertising` | Ad-supported model |
| `usage_based` | Pay-as-you-go pricing |
| `freemium` | Free tier with paid upgrades |
| `enterprise_contract` | Large enterprise contracts |
| `hardware_margin` | Hardware product margin |
| `services` | Services revenue |
| `marketplace_take_rate` | Marketplace platform fee |
| `open_source_commercial` | Open source with commercial offering |
| `other` | Other business model |

Type: enum. Required.

### `pricing_model`

Pricing structure.

Allowed values: `free`, `freemium`, `paid_subscription`, `usage_based`, `enterprise`, `commission`, `one_time_purchase`, `ads_supported`, `custom`, `unknown`.

Type: enum. Optional.

### `gtm_channel`

Primary go-to-market channel.

Allowed values: `sales_led`, `product_led`, `founder_led_sales`, `paid_ads`, `SEO`, `content`, `community`, `partnerships`, `viral`, `app_store`, `marketplace_platform`, `outbound`, `unknown`.

Type: enum. Optional.

### `stage_at_failure`

Stage when the startup failed.

Allowed values: `idea`, `MVP`, `bootstrapped`, `pre_seed`, `seed`, `post_seed`, `series_a`, `pre_series_b`, `unknown`.

Type: enum. Optional.

### `funding_raised_usd`

Total funding raised in USD, including all rounds. May be approximate.

Type: integer (numeric only, no commas or symbols) or empty. Optional.

### `team_size`

Peak team size. May be approximate.

Type: integer or empty. Optional.

### `stated_failure_cause`

Failure cause as stated by the source, often a direct quote or close paraphrase.

Type: string. Optional.

### `primary_failure_cause`

Main classified failure cause according to the project's taxonomy.

Allowed values:

| Value | Meaning |
|---|---|
| `product_market_fit_failure` | Product did not achieve sufficient market demand |
| `no_urgent_pain` | Problem existed but was not urgent enough to drive adoption |
| `business_model_mismatch` | Product had users but the business model did not work |
| `distribution_failure` | Could not acquire or scale customers efficiently |
| `operational_complexity` | Operations were too complex or expensive to sustain |
| `regulatory_or_legal_pressure` | Regulation or legal action ended the business |
| `platform_risk` | Dependency on another platform became fatal |
| `technical_complexity` | Technical challenges delayed or prevented validation |
| `marketplace_liquidity_failure` | Marketplace could not balance supply and demand |
| `founder_conflict` | Founder disagreement, misalignment, or burnout |
| `timing_problem` | Too early or too late for the market |
| `market_too_small` | Total addressable market was too small |
| `high_cac_bad_unit_economics` | Customer acquisition cost exceeded lifetime value |
| `weak_retention` | Users did not return or repeat |
| `trust_safety_failure` | Abuse, moderation, or safety issues undermined the product |
| `competition_pressure` | Strong competitors made the market untenable |
| `too_broad_icp` | Ideal customer profile was not focused enough |
| `fundraising_dependency` | Could not raise sufficient capital to continue |
| `bad_pricing` | Pricing was too low, too high, or misaligned with value |
| `other` | Other classified failure cause |

Type: enum. Required.

### `secondary_failure_causes`

Additional contributing causes, separated by semicolons.

Type: string (semicolon-delimited enum values). Optional.

### `symptoms`

Warning signs or observable problems before failure.

Type: string. Optional.

### `evidence_summary`

Short evidence-based summary supporting the primary failure cause classification.

Type: string. Required.

### `confidence_score`

Confidence in the primary failure cause classification.

Allowed values:

| Value | Meaning |
|---|---|
| `high` | Primary source with clear evidence and testable claim |
| `medium` | Secondary source, or primary but incomplete |
| `low` | Speculative or insufficient evidence |

Type: enum. Required.

### `notes`

Uncertainty notes, context, or caveats about the case.

Type: string. Optional.

---

## Enum Consistency

All enum values must match exactly (case-sensitive) as defined in this document and in `phase-1-foundation/dataset_schema.md`. The CSV is validated against these enums during import.

---

## Changelog

- v1.0: Initial schema (Phase 1)
- v1.1: Added `is_core_early_stage_case` field
- v1.2: Added `trust_safety_failure`, `business_model_mismatch`, `sales_cycle_too_long` to failure cause enum
