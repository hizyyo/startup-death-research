# Methodology

# The Anatomy of Startup Death

## Research Methodology v1

## Purpose

This methodology defines how startup failure cases are collected, included, excluded, classified, and scored. The goal is to make the project credible, repeatable, and transparent.

## Research Object

The research object is the failed early-stage startup.

A failed startup is a startup or startup-like company that shut down, became inactive, or pivoted away from its original core product because the original business was no longer viable.

## Definition Of Early-Stage Startup

For this project, early-stage means one or more of the following:

- Indie project with startup-like ambition.
- Pre-seed startup.
- Seed-stage startup.
- Post-seed startup.
- Series A startup if still relatively small and failure is well documented.
- Pre-Series B company in most cases.

The project should avoid large public companies, mature corporations, and late-stage failures unless the case is especially useful for the taxonomy.

## Inclusion Criteria

A company can be included if all or most of the following are true:

- It was a startup or startup-like company.
- It built a product, platform, marketplace, app, tool, or service.
- It shut down, became inactive, or pivoted away from the original product.
- There is enough public information to classify at least one likely failure cause.
- There is at least one reliable source.
- The company was early-stage, indie, seed-stage, post-seed, or pre-Series B.

## Exclusion Criteria

A company should be excluded if any of the following are true:

- It is a large public company rather than an early-stage startup.
- It was acquired successfully and did not fail.
- There is no reliable source.
- The company is still active in the same core product.
- The case is too vague to classify.
- The shutdown reason is purely personal and not connected to the business.
- The source is only rumor with no supporting evidence.

## Borderline Cases

Some cases may be included with a low confidence score if they are useful but incomplete.

Examples:

- A startup that pivoted completely and abandoned the original product.
- A startup whose website is dead but source evidence is limited.
- A startup that was acqui-hired after failing to build a sustainable business.
- A startup that technically still exists but the original product is no longer active.

All borderline cases must include notes explaining uncertainty.

## Source Types

Preferred sources:

- Founder postmortem.
- Founder interview.
- Employee interview.
- Investor analysis.
- News article.
- Podcast transcript.
- Startup database.
- Archived website.
- Hacker News discussion.
- Product Hunt shutdown post.
- Legal, regulatory, or public filing source.

## Source Quality

Source quality should be recorded separately from confidence score.

Suggested source quality levels:

- Primary: founder postmortem, founder interview, employee interview, official shutdown announcement.
- Secondary: credible news article, investor analysis, podcast, startup database.
- Tertiary: forum discussion, archived snippets, community comments, weak database entry.

## Coding Process

For each startup:

1. Collect all available sources.
2. Write a neutral one-sentence description.
3. Identify stated failure reasons from the source.
4. Identify inferred failure reasons only when evidence supports them.
5. Assign one primary failure cause.
6. Assign zero or more secondary failure causes.
7. Identify early warning symptoms.
8. Assign confidence score.
9. Record source URLs.
10. Add uncertainty notes.

## Stated Cause vs Researcher-Coded Cause

Each case should separate:

- Stated failure cause: what the founder, company, or source explicitly says.
- Researcher-coded failure cause: the category assigned by this project based on the taxonomy.

This matters because founders may misdiagnose or simplify the real reason for failure.

## Confidence Score

Each startup should receive one confidence score.

### High Confidence

Use when:

- There is a founder postmortem or direct interview.
- There are multiple consistent sources.
- The failure cause is clearly supported by evidence.
- The timeline is reasonably clear.

### Medium Confidence

Use when:

- There is a credible article or database entry.
- The shutdown and likely cause are supported but not fully detailed.
- Some fields are missing but the main classification is reasonable.

### Low Confidence

Use when:

- Evidence is limited.
- The shutdown reason is unclear.
- The source is weak or incomplete.
- The case is useful but uncertain.

## Bias Controls

Important limitations to mention in the report:

- Founder postmortems may be self-serving.
- Public cases overrepresent English-speaking tech startups.
- Famous failures are easier to find than obscure failures.
- Many startups die quietly without public explanation.
- Failure causes are often multi-factorial.
- Shutdown does not always mean the idea was bad.
- A startup can fail because of timing, capital markets, or personal constraints, not only product mistakes.

## Classification Rules

- Assign only one primary failure cause.
- Assign secondary causes if there is evidence.
- Do not infer causes without evidence.
- Prefer concrete causes over vague labels like product-market fit failure.
- Use product-market fit failure only when more specific causes cannot be identified.
- Add notes when classification is uncertain.

## MVP Dataset Target

First milestone: 100 failed startups.

Quality requirements:

- Every row has at least one source URL.
- Every row has a primary failure cause.
- Every row has a confidence score.
- At least 60 rows should be medium or high confidence.
- At least 20 rows should come from founder postmortems or direct founder sources.
