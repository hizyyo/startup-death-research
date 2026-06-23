# Source Pipeline

# The Anatomy of Startup Death

## Source Pipeline For 100 Startup Failure Cases

## Goal

Build the MVP dataset with 100 failed early-stage startups using reliable public sources.

Quality target:

- 100 total core cases.
- 100% of rows have at least one source URL.
- 100% of rows have primary failure cause.
- 100% of rows have confidence score.
- At least 60 cases are medium or high confidence.
- At least 20 cases come from primary sources such as founder postmortems, founder interviews, or official shutdown posts.

## Collection Strategy

Do not collect random famous failures first. The dataset should be balanced across categories.

Target distribution for first 100 cases:

- 20 SaaS
- 15 marketplace
- 15 consumer app/social
- 10 devtool
- 10 fintech
- 10 ecommerce/commerce
- 5 hardware
- 5 edtech/healthtech
- 10 other or mixed categories

Target source distribution:

- 20+ founder postmortems or founder interviews
- 30+ credible news articles
- 10+ startup database entries with supporting sources
- 10+ Indie Hackers or bootstrapped founder cases
- Remaining cases from podcasts, archived websites, Product Hunt, HN, or VC analysis

## Source Tiers

## Tier 1: Primary Sources

Best sources. Prioritize these.

- Founder postmortems.
- Founder interviews.
- Official shutdown announcements.
- Employee retrospectives.
- Company blog posts.
- Indie Hackers product updates written by founders.

## Tier 2: Strong Secondary Sources

Good sources when primary sources are unavailable.

- TechCrunch.
- The Verge.
- Wired.
- Bloomberg.
- Axios.
- CNBC.
- Fortune.
- Forbes.
- Business Insider.
- Sifted.
- EU-Startups.
- VC blog analyses.

## Tier 3: Discovery Sources

Use these to find candidates, then verify with better sources.

- Failory.
- CB Insights failure lists.
- Startup Graveyard.
- Product Hunt comments.
- Hacker News discussions.
- Reddit founder posts.
- Crunchbase-like databases.
- Archived websites.

## Search Queries

Use these queries to find candidates:

- `startup postmortem shut down founder`
- `why we shut down startup founder postmortem`
- `failed startup postmortem SaaS`
- `failed startup postmortem marketplace`
- `site:indiehackers.com closed our startup SaaS`
- `site:indiehackers.com shut down our startup`
- `site:medium.com startup postmortem shut down`
- `site:substack.com startup postmortem shut down`
- `site:news.ycombinator.com startup postmortem shut down`
- `Product Hunt startup shutting down founder`
- `YC startup shut down postmortem`
- `we're shutting down our startup`
- `why our startup failed founder`

## Candidate Evaluation Process

For each candidate:

1. Confirm the startup actually shut down, became inactive, or abandoned the original product.
2. Confirm the case fits early-stage scope.
3. Find at least one reliable source.
4. Prefer primary source if available.
5. Identify stated failure cause.
6. Assign researcher-coded primary failure cause.
7. Add secondary causes only if evidence supports them.
8. Assign confidence score.
9. Add notes for uncertainty.

## Case Acceptance Checklist

Before adding a startup to `startup_failures_mvp.csv`, answer:

- Is there a source URL?
- Is the startup actually dead, inactive, or pivoted away from the original product?
- Is this a core early-stage case?
- Is the failure cause supported by evidence?
- Is the primary failure cause specific enough?
- Is confidence score justified?
- Are unknown fields marked as `unknown` instead of guessed?

## Rejection Reasons

Reject or postpone a case if:

- No reliable source exists.
- The company is still active in the same product.
- The case is too vague.
- The shutdown was a successful acquisition, not failure.
- The company is too late-stage and not useful for the core dataset.
- The available article only says the startup shut down but gives no usable failure evidence.

## First 30 Candidate Buckets

To make collection faster, fill candidates by bucket.

## SaaS / B2B

- Failed CRM, analytics, HR, sales, productivity, marketing, and operations tools.
- Look for founder postmortems and Indie Hackers posts.

## Marketplace

- Local services, labor marketplaces, delivery, rentals, creator marketplaces, B2B marketplaces.
- Look for liquidity, unit economics, CAC, and operational complexity.

## Consumer / Social

- Social apps, anonymous apps, mobile apps, communities, content apps.
- Look for retention, trust and safety, distribution, and hype decay.

## Devtools

- APIs, open-source commercial tools, developer platforms, infrastructure tools.
- Look for willingness to pay, narrow market, pricing, and distribution.

## Hardware

- Consumer hardware, connected devices, robotics.
- Look for technical complexity, pricing, manufacturing, and value proposition.

## Fintech

- Consumer finance apps, payments, lending, crypto, banking tools.
- Look for regulatory pressure, trust, distribution, and competition.

## Work Rhythm For Phase 2

Recommended workflow:

1. Collect 20 candidates.
2. Filter to 10 high-quality cases.
3. Add them to CSV.
4. Review taxonomy fit.
5. Repeat until 100 cases.

Do not wait to collect all 100 before reviewing quality. Review every 10 rows.
