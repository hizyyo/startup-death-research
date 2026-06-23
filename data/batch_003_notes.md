# Batch 003 Notes

## Scope

Third Phase 2 batch for `startup_failures_mvp.csv`.

Target: 20 cases focused on underrepresented failure causes.

Result: 20 cases added.

Dataset size after batch: 50 cases.

## Cases Added

- RethinkDB
- Homejoy
- Shyp
- Sprig
- SpoonRocket
- Take Eat Easy
- Washio
- Move Loot
- Prim
- Cherry
- Secret
- Yik Yak
- Formspring
- App.net
- Blab
- Meerkat
- Grooveshark
- 99dresses
- Dinnr
- Outbox

## Batch Design

This batch was not selected randomly. It intentionally targets gaps from Batch 001 and Batch 002:

- high CAC / bad unit economics
- operational complexity
- trust and safety failure
- platform risk
- marketplace liquidity failure
- regulatory or legal pressure
- no urgent pain

## Strongest Cases In This Batch

- RethinkDB: strong founder postmortem and shutdown announcement.
- Grooveshark: official shutdown/legal settlement statement reproduced by TechCrunch.
- Dinnr: founder postmortem with clear weak-pain diagnosis.
- Outbox: shutdown note includes concrete acquisition failure data.
- Secret: founder explanation of anonymous-social product drifting away from original vision.
- Blab: founder explanation of weak retention despite large signups.

## Medium-Confidence Cases

These cases are included because the failure pattern is analytically valuable, but the main stored source is secondary or the company is larger than ideal:

- Homejoy
- Shyp
- Sprig
- SpoonRocket
- Take Eat Easy
- Washio
- Move Loot
- Prim
- Cherry
- Yik Yak
- Formspring
- App.net
- Meerkat
- 99dresses

## Cases Deferred

- Aereo: excellent legal/regulatory case, but raised too much capital for core early-stage scope.
- Luxe: useful on-demand operations case, but not a clean shutdown and raised too much capital.
- Convoy: too late-stage and too heavily funded for the core MVP dataset.
- Songkick Ticketing: interesting legal/competition case, but asset sales and legal settlement make classification complex.
- Layer: weak source quality for first-pass inclusion.
- LayerVault: useful but source quality should be improved before adding.
- Vreal: good timing case, but Batch 003 already had enough medium-confidence larger funded cases.
- Vrideo: good VR timing case, but defer until a future timing-focused batch.

## Quality Notes

- Batch 003 deliberately includes some famous on-demand failures because the dataset needed evidence-rich examples of unit economics and operational complexity.
- Several cases have higher funding than the ideal early-stage profile. They are included only where the failure mechanism is especially clear and useful.
- Batch 004 should rebalance toward smaller bootstrapped, pre-seed, and seed cases.

## Next Recommendation

Batch 004 should add 20 cases with stricter early-stage scope:

- more bootstrapped SaaS
- more small marketplaces
- more non-US startups
- more founder-written shutdown posts
- fewer famous VC-backed on-demand companies
