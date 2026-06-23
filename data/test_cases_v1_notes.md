# Test Cases v1 Notes

## Purpose

This file records why the first 10 cases were selected and what schema/taxonomy issues appeared during initial classification.

## Selected Test Cases

1. Homejoy - marketplace, high CAC, retention, legal/regulatory pressure, operations.
2. Everpix - consumer app, great product but weak business scaling and funding dependency.
3. Wesabe - fintech, product simplicity and competition against Mint.
4. Turntable.fm - consumer social, weak retention, hype decay, music licensing/platform constraints.
5. Secret - consumer social, anonymity/trust-safety, product vision drift, regulatory pressure.
6. Juicero - hardware, bad pricing, no urgent pain, over-engineered product.
7. Beepi - marketplace, operational complexity, unit economics, funding dependency.
8. Atrium - B2B legaltech/services, software-services mismatch, operations.
9. Hakeema - indie/bootstrapped SaaS, custom work vs scalable product.
10. Quibi - media/consumer subscription, not early-stage but useful as a stress test.

## Important Notes

- Doppler was not used because I did not find a strong shutdown/failure source quickly enough.
- Hakeema is a better test case because it has a founder-written Indie Hackers post and represents bootstrapped SaaS.
- Quibi and Juicero are not ideal early-stage examples because of their funding size, but they are useful for stress-testing the schema.
- Beepi and Atrium are also heavily funded, so they may be moved out of the final MVP dataset if the project stays strict about early-stage.

## Schema Issues Found

- Some startups are hybrid categories, especially Atrium: legal services plus software.
- `category` may need multi-select later, but single category is okay for MVP.
- `stage_at_failure` is hard to classify when funding is large or unusual.
- `funding_raised_usd` is useful but can make the dataset drift away from early-stage unless filtered carefully.
- `stated_failure_cause` and `primary_failure_cause` are both necessary because public narratives often differ from deeper causes.

## Taxonomy Issues Found

- `trust_safety_failure` may deserve its own category for anonymous/social/community products like Secret.
- `business_model_mismatch` may deserve its own category for cases like Hakeema and Atrium.
- `fundraising_dependency` is often a symptom of deeper issues, not always the root cause.
- `product_market_fit_failure` should remain a fallback category, not the default.

## Recommended Next Action

Review these 10 rows manually, then decide whether to update the taxonomy with two new categories:

- trust_safety_failure
- business_model_mismatch
