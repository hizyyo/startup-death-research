# Archive Status Report

## The Anatomy of Startup Death

**Date:** 2026-06-23
**Source:** `data/startup_failures_mvp.csv`

---

## Wayback Machine Archive

| Metric | Count |
|---|---|
| Total source URLs | 100 |
| Successfully saved to Wayback Machine | 36 |
| Failed (timeout — retry later) | 10 |
| Not yet attempted | 54 |

The Wayback Machine save API was unreachable from this network environment. The script `scripts/archive_sources.ps1` supports resume — run it from a network where `archive.org` is accessible.

## URL Health Check

| Status | Count | Notes |
|---|---|---|
| ALIVE (HTTP 2xx/3xx) | 87 | Accessible as of 2026-06-23 |
| DEAD (HTTP 4xx/5xx) | 7 | Need alternative sources |
| TIMEOUT (no response) | 6 | Likely alive but slow |

### Dead URLs

These URLs returned HTTP errors and should be replaced with alternative sources:

| URL | Error | Suggested Action |
|---|---|---|
| medium.com/@brett1211/...sonar-postmortem | 403 | Medium blocks bots — alive in browser, try `web.archive.org` |
| medium.com/@gordi/...onetool | 403 | Same issue |
| tristanzier.medium.com/...zen99 | 403 | Same issue |
| medium.com/10-thousand-ways-to-fail/standout-jobs | 403 | Same issue |
| medium.com/10-thousand-ways-to-fail/myfavorites | 403 | Same issue |
| venturebeat.com/...everpix | 429 | Rate limited — alive in browser |
| tech.yahoo.com/...bluesmart | 404 | Dead — find alternative or remove from dataset |

### Recommendation

1. **Medium 403s**: These are alive but block bots. Access via browser and save manually to Wayback Machine, or use the Wayback Machine availability check (they may already be archived).
2. **Yahoo 404**: The Bluesmart case needs a new source URL.
3. **Wayback Machine**: When archive.org is accessible, run `scripts/archive_sources.ps1` to save remaining 64 URLs.
