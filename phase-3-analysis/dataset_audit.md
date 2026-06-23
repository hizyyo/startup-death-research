# Dataset Audit

# The Anatomy of Startup Death

## Audit Status

Initial audit after completing the 100-case MVP dataset.

Dataset file: `data/startup_failures_mvp.csv`

Current size: 100 cases.

Validation status: passed.

## Structural Validation

- Rows: 100
- Unique IDs: 100
- Duplicate ID groups: 0
- Duplicate name groups: 0
- Required-field issues: 0
- Enum/schema issues: 0

## Evidence Quality

- High-confidence cases: 69
- Medium-confidence cases: 31
- Low-confidence cases: 0

Source quality distribution:

- Primary: 72
- Secondary: 28
- Tertiary: 0

Interpretation:

The dataset is strong enough for MVP analysis because most cases are based on founder postmortems, founder interviews, official shutdown announcements, or detailed founder-derived sources.

## Known Quality Risks

The dataset is usable, but not final-publication grade until these issues are reviewed:

- Some source URLs may disappear or change, so important sources should be archived.
- Some medium-confidence cases rely on strong secondary reporting rather than direct founder writing.
- Some famous VC-backed cases are included because they are analytically useful, but they are less representative of small early-stage startups.
- Some non-software/offline cases are included to stress-test the taxonomy.
- North America is overrepresented.
- Product-market-fit and no-urgent-pain causes are common and may hide more precise sub-causes.

## Borderline Cases To Re-Audit

These are not necessarily bad cases. They should simply be reviewed before public release.

- Homejoy: strong failure mechanics but high funding and secondary-source heavy.
- Shyp: strong founder explanation but high funding.
- Sprig: strong operations case but high funding.
- Yik Yak: valuable trust/safety case but high funding and later relaunch history.
- Grooveshark: strong legal case but older and more mature than ideal.
- Bluesmart: strong hardware/regulatory case but secondary source and higher funding.
- YOLO: strong trust/safety/platform case but secondary/legal source.
- The Nerd Cave: useful offline/community case but not a conventional startup.
- InoVVorX: useful hybrid services/startup failure but less clean than pure product startups.

## Recommended Audit Actions

1. Add archive links for all source URLs.
2. Re-check all `medium` confidence cases.
3. Add a `scope_notes` or `case_type` field in a future schema version.
4. Consider adding `shutdown_type` in a future schema version.
5. Revisit PMF and no-urgent-pain cases to see if some should be reclassified into more precise causes.
6. Add more non-US cases in future versions after the MVP is packaged.

## MVP Conclusion

The 100-case dataset is good enough for Phase 3 analysis, public methodology drafting, and initial charts.

It should not yet be marketed as a definitive or comprehensive database. It should be framed as a structured public research dataset built from public startup postmortem evidence.
