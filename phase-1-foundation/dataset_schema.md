# Dataset Schema

# The Anatomy of Startup Death

## Dataset Schema v1.2

## Purpose

This document defines the fields for the startup failure dataset. The goal is to keep data collection structured, consistent, and analyzable.

## Dataset Format

Recommended first format: CSV.

Future formats:

- CSV for public download.
- JSON for website.
- Notebook for analysis.
- Markdown for case studies.

## Required Fields

| Field | Type | Required | Description | Example |
|---|---|---|---|---|
| id | string | yes | Unique startup ID | fs_0001 |
| name | string | yes | Startup name | ExampleCo |
| description | string | yes | One-sentence startup description | A SaaS tool for remote team analytics |
| website_url | url | no | Current or archived website | https://example.com |
| source_url | url | yes | Main source for failure information | https://example.com/postmortem |
| additional_sources | string | no | Extra source URLs separated by semicolon | url1; url2 |
| is_core_early_stage_case | enum | yes | Whether the case belongs in the core early-stage dataset | yes |
| source_type | enum | yes | Main source type | founder_postmortem |
| source_quality | enum | yes | Primary, secondary, or tertiary | primary |
| founded_year | integer | no | Year founded | 2018 |
| failed_year | integer | no | Year shut down or became inactive | 2021 |
| country | string | no | Country or main market | United States |
| region | string | no | Region | North America |
| category | enum | yes | Startup category | SaaS |
| customer_type | enum | yes | Main customer type | B2B |
| business_model | enum | yes | Business model | subscription |
| pricing_model | enum | no | Pricing model | freemium |
| gtm_channel | enum | no | Main go-to-market channel | sales_led |
| stage_at_failure | enum | no | Stage when failed | seed |
| funding_raised_usd | number | no | Funding raised in USD | 1500000 |
| team_size | integer | no | Team size if known | 8 |
| stated_failure_cause | string | no | Failure reason stated by source | Could not scale customer acquisition |
| primary_failure_cause | enum | yes | Main classified failure cause | distribution_failure |
| secondary_failure_causes | string | no | Additional causes separated by semicolon | weak_retention; bad_pricing |
| symptoms | string | no | Warning signs before failure | high churn; weak inbound demand |
| evidence_summary | string | yes | Short evidence-based summary | Founder postmortem says paid acquisition was unprofitable and sales did not scale. |
| confidence_score | enum | yes | Low, medium, or high | high |
| notes | string | no | Uncertainty or context | Shutdown year approximate |

## Enumerations

## source_type

## is_core_early_stage_case

Allowed values:

- yes
- no

Use `yes` for cases that fit the core research scope: indie, pre-seed, seed, post-seed, or pre-Series B startups.

Use `no` for stress-test cases, famous late-stage failures, or cases included only to test the taxonomy.

## source_type

Allowed values:

- founder_postmortem
- founder_interview
- employee_interview
- official_shutdown_announcement
- investor_analysis
- news_article
- startup_database
- hacker_news_discussion
- product_hunt_post
- podcast_transcript
- archived_website
- legal_or_regulatory_source
- other

## source_quality

Allowed values:

- primary
- secondary
- tertiary

## category

Allowed values:

- SaaS
- marketplace
- devtool
- consumer_app
- fintech
- hardware
- AI
- ecommerce
- edtech
- healthtech
- social
- media
- productivity
- infrastructure
- other

## customer_type

Allowed values:

- B2B
- B2C
- B2B2C
- developer
- SMB
- enterprise
- prosumer
- consumer
- other

## business_model

Allowed values:

- subscription
- transaction_fee
- commission
- advertising
- usage_based
- freemium
- enterprise_contract
- hardware_margin
- services
- marketplace_take_rate
- open_source_commercial
- other

## pricing_model

Allowed values:

- free
- freemium
- paid_subscription
- usage_based
- enterprise
- commission
- one_time_purchase
- ads_supported
- custom
- unknown

## gtm_channel

Allowed values:

- sales_led
- product_led
- founder_led_sales
- paid_ads
- SEO
- content
- community
- partnerships
- viral
- app_store
- marketplace_platform
- outbound
- unknown

## stage_at_failure

Allowed values:

- idea
- MVP
- bootstrapped
- pre_seed
- seed
- post_seed
- series_a
- pre_series_b
- unknown

## primary_failure_cause

Allowed values:

- distribution_failure
- weak_retention
- bad_pricing
- no_urgent_pain
- too_broad_icp
- market_too_small
- high_cac_bad_unit_economics
- founder_conflict
- fundraising_dependency
- platform_risk
- marketplace_liquidity_failure
- operational_complexity
- technical_complexity
- regulatory_or_legal_pressure
- timing_problem
- competition_pressure
- trust_safety_failure
- sales_cycle_too_long
- business_model_mismatch
- product_market_fit_failure
- other

## confidence_score

Allowed values:

- low
- medium
- high

## Example Row

```csv
id,name,description,website_url,source_url,additional_sources,is_core_early_stage_case,source_type,source_quality,founded_year,failed_year,country,region,category,customer_type,business_model,pricing_model,gtm_channel,stage_at_failure,funding_raised_usd,team_size,stated_failure_cause,primary_failure_cause,secondary_failure_causes,symptoms,evidence_summary,confidence_score,notes
fs_0001,ExampleCo,A SaaS tool for remote team analytics,https://example.com,https://example.com/postmortem,,yes,founder_postmortem,primary,2018,2021,United States,North America,SaaS,B2B,subscription,freemium,founder_led_sales,seed,1500000,8,Could not scale acquisition,distribution_failure,bad_pricing,weak inbound demand; low paid conversion,Founder postmortem says acquisition depended on personal network and freemium users did not convert.,high,Example placeholder row
```

## Data Quality Rules

- Every row must have an `id`.
- Every row must have a `source_url`.
- Every row must have `is_core_early_stage_case`.
- Every row must have a `primary_failure_cause`.
- Every row must have a `confidence_score`.
- Unknown values should be marked as `unknown`, not guessed.
- Inferred causes must be supported by evidence.
- Notes should explain uncertainty.
