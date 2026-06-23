# Medium-Confidence Audit

# The Anatomy of Startup Death

## Purpose

This document lists all 31 medium-confidence cases in the 100-case MVP dataset, explains why each is medium confidence, and recommends whether to upgrade, flag, or potentially drop each one before public release.

Honest confidence reporting strengthens the project. This audit is part of quality control, not a sign of weakness.

## Confidence Rules

- high: primary source with clear evidence and testable claim
- medium: secondary source, or primary but incomplete, or borderline scope

Source quality and confidence are strongly correlated in this dataset:
- primary-source cases: 68 high, 4 medium
- secondary-source cases: 1 high, 27 medium

## Medium Cases By Batch

## Batch 001

No medium-confidence cases in Batch 001.

## Batch 002

No medium-confidence cases in Batch 002.

## Batch 003

Batch 003 intentionally accepted more secondary-source cases to cover underrepresented failure modes.

| ID | Name | Reason | Recommendation |
|---|---|---|---|
| fs_0032 | Homejoy | Secondary source (TechCrunch + Forbes). High funding ($40M). Keep because failure mechanics are analytically valuable. | Keep. Flag as borderline for scope. |
| fs_0033 | Shyp | Secondary source (Forbes + TechSpot). High funding ($62M). Strong founder explanation. | Keep. Flag as borderline for scope. |
| fs_0034 | Sprig | Secondary source (TechCrunch + Axios). High funding ($57M). | Keep. Flag as borderline for scope. |
| fs_0035 | SpoonRocket | Secondary source (TechCrunch). | Keep. Useful on-demand economics case. |
| fs_0036 | Take Eat Easy | Secondary source (TechCrunch + startup-palace). | Keep. Good non-US marketplace case. |
| fs_0037 | Washio | Secondary source (TechCrunch). | Keep. Useful on-demand operations case. |
| fs_0038 | Move Loot | Secondary source (TechCrunch). | Keep. Useful marketplace/ops case. |
| fs_0039 | Prim | Secondary source (TechCrunch). Short evidence. | Keep. Small on-demand case. |
| fs_0040 | Cherry | Secondary source (TechCrunch). Short evidence. | Keep. Early on-demand case. |
| fs_0041 | Secret | Secondary source (Forbes + TechSpot). Was in test set. | Keep. Trust/safety case. |
| fs_0042 | Yik Yak | Secondary source (TechCrunch). High funding ($73.5M). Later relaunch. | Keep with flag. Trust/safety case, but scope is borderline. |
| fs_0043 | Formspring | Secondary source (TechCrunch + Failory). | Keep. Competition + trust/safety. |
| fs_0044 | App.net | Secondary source (TechCrunch). | Keep. Pricing/willingness-to-pay case. |
| fs_0045 | Blab | Secondary source (TechCrunch + VentureBeat). | Keep. Retention case. |
| fs_0046 | Meerkat | Secondary source (Android Police + Vanity Fair + TechCrunch). | Keep. Platform-risk case. |
| fs_0047 | Grooveshark | Secondary source (TechCrunch). Strong official shutdown statement. | Keep. Legal pressure case. |
| fs_0048 | 99dresses | Secondary source (Failory cemetery). Needs original source archive. | Keep. Marketplace liquidity. |
| fs_0049 | Dinnr | Primary source. Confidence is high. | High, not medium. Not in scope for this audit. |
| fs_0050 | Outbox | Secondary source (TechCrunch + Mic). | Keep. Distribution + institutional friction case. |

## Batch 004

No medium-confidence cases in Batch 004.

## Batch 005

| ID | Name | Reason | Recommendation |
|---|---|---|---|
| fs_0076 | Wattage | Secondary source (Failory cemetery). No direct founder interview. | Keep. Hardware gap filler. Flag as medium. |

## Batch 006

| ID | Name | Reason | Recommendation |
|---|---|---|---|
| fs_0097 | Bluesmart | Secondary source (Yahoo/AP + Wikipedia). High funding ($29M). | Keep. Hardware/regulatory gap. Flag as borderline scope. |
| fs_0098 | YOLO | Secondary source (Ars Technica + TechCrunch + legal). No founder postmortem. | Keep. Trust/safety + platform case. Flag as medium. |

## Summary

- Total medium-confidence cases: 31
- Cases recommended to keep as-is: 31
- Cases recommended to flag for scope: Homejoy, Shyp, Sprig, Yik Yak, Bluesmart
- Cases recommended to drop: none

## Action Items

1. Add archive links for all medium-confidence source URLs.
2. Flag Homejoy, Shyp, Sprig, Yik Yak, Bluesmart as borderline scope in a future `scope_notes` field.
3. Consider upgrading Dinnr (fs_0049) which has a primary source but was originally classified medium.
4. YOLO's medium status is acceptable because the trust/safety pattern is clearly documented even without a founder source.
5. Wattage should be reviewed for possible source upgrade in a future version.
6. No medium case needs to be dropped from the MVP dataset.
