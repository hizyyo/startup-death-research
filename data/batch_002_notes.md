# Batch 002 Notes

## Scope

Second real Phase 2 batch for `startup_failures_mvp.csv`.

Target: 20 high-quality core early-stage cases.

Result: 20 cases added.

Dataset size after batch: 30 cases.

## Cases Added

- Tutorspree
- NewsTilt
- Zen99
- Plancast
- Flud
- DrawQuest
- Newsberry
- Spreadable
- DataDistillr
- Tess.Design
- Everpix
- Wesabe
- Patient Communicator
- Standout Jobs
- Monitor110
- MyFavorites
- Workapp
- Video Scheduler
- PageLines Platform 5
- Zeda.io

## Quality Rationale

This batch prioritizes cases with founder postmortems, founder interviews, official shutdown announcements, or detailed secondary sources based on founder commentary.

Strong primary-source cases:

- NewsTilt
- Zen99
- Plancast
- Newsberry
- Spreadable
- DataDistillr
- Tess.Design
- Patient Communicator
- Standout Jobs
- MyFavorites
- Workapp

Medium-confidence cases included because they add useful category diversity:

- Tutorspree: strong analytical value but main stored source is secondary until original founder postmortem is archived.
- Flud: TechCrunch founder interview, not direct founder essay.
- DrawQuest: founder interview plus shutdown reporting.
- Everpix: strong reporting but not direct founder postmortem.
- Monitor110: strong postmortem tradition but funding is higher than ideal.
- Video Scheduler: direct source but short evidence.
- PageLines Platform 5: official source but needs exact date verification later.
- Zeda.io: founder interview, but written transcript/source should be added later.

## Cases Rejected Or Deferred

- Convoy: too late-stage and overfunded for core early-stage MVP.
- Paxful: shutdown was temporary and company later resumed operations.
- Visionrare: shutdown/pivot happened too quickly and legal story is useful but not ideal for core MVP yet.
- Contentmart: weak source quality and no detailed founder postmortem found quickly.
- GoImagine: interesting marketplace case but too current and needs stronger primary source before inclusion.
- Readmill: acquihire makes failure classification ambiguous.
- Secret: useful trust/safety case but too high-profile and already in test set; defer until trust/safety batch.

## Taxonomy Notes

- `platform_risk` is useful not only for API/app store dependence but also SEO and ecosystem dependence.
- `no_urgent_pain` and `product_market_fit_failure` need careful separation.
- `business_model_mismatch` is showing up often in profitable-but-not-scalable products.
- Need a future schema field for `shutdown_type`, because cases differ between hard shutdown, acquihire, asset sale, paused product, and discontinued product line.

## Next Recommendation

Batch 003 should avoid adding too many generic PMF cases.

Priority for the next 20:

- More marketplace liquidity failures.
- More trust and safety failures.
- More high CAC / bad unit economics cases.
- More regulatory/legal pressure cases.
- More non-US cases.
