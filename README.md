# Proof of Skills — an honest read of my repos

This isn't a résumé with claims. It's what my repos *actually* show as of **October 2026** — strengths, gaps, and unfinished work included. Updated by re-auditing commit history, file trees, and READMEs across all 11 repos under [@knightingale408](https://github.com/knightingale408); most are private solo projects, so evidence here is described rather than linked where a reader can't view the source.

## Snapshot

I build fast, solo, and across disciplines — civic-data journalism, fintech tooling, and full-stack web apps — usually going from zero to a working artifact in a handful of commits, often with AI-assisted scaffolding. The strongest, most load-bearing evidence is one real full-stack TypeScript app with auth and tests. Everything else ranges from "working data pipeline" down to "idea parked after one commit." Nothing here shows sustained team collaboration, code review, or long-lived maintenance (no multi-month history, no PRs from others, no issue trackers in active use).

## Strongest evidence

| Repo | Stack | What it actually proves |
|---|---|---|
| `sky-swift-sky-kind` ("Meridian", private) | TanStack Router/Start, React 19, TypeScript, Postgres (Kysely + pglite), better-auth, Zod, Playwright, Vitest-style `node --test` suites, ESLint/Prettier | Real full-stack engineering: server-side auth gating (`gate-identity`, `gate-session`), a typed data layer, unit tests for auth and portfolio logic, and a CSV-import/portfolio-health feature — not a template, an actual working app with tests that pass. Only 5 commits, so depth exists but history/iteration doesn't yet. |
| [`thesanjosesource`](https://github.com/knightingale408/thesanjosesource) (public) | Static HTML/CSS/JS + GitHub Actions | A real, still-updating project: 30 commits, a public site (GitHub Pages + custom domain), CI workflows, and an actual editorial process (sourced claims, correction logs). Proves follow-through and operating discipline, not advanced engineering — it's deliberately build-step-free. |
| `fiscal-os` (private) | Python | Three substantive scripts (`brief_generate.py`, `legistar_pull.py`, `promised_vs_actual.py`, 8–16KB each) doing real scraping/parsing of government data sources, shared with the San Jose Source project. Proves working data-pipeline Python, not just snippets. |

## Working but shallow

| Repo | Status |
|---|---|
| `onejob` (private) | Functional Next.js landing page wired to real Stripe Payment Links; fulfillment is manual by design. Proves basic frontend + payments integration, not backend/ops automation. |
| `ai-aoi-index` (private) | 103 files but core scripts are ~170 bytes each — mostly stubs/structure, data panel is header-only ("not Friday-ready" per its own README). Proves planning, not a working pipeline yet. |
| `public-ledger-idea` (private) | Mostly a large generated HTML bundle plus docs/process files (`CRITIQUE.md`, freeze-gate workflow). Proves process design, limited proof of custom code. |

## Ideas, not builds

`autofillresumeattempt`, `APICOSTANDRELIABILITYMONITOR`, `ai-results-venture`, `outcomeos` — each is a single-digit-commit repo of README/planning docs with no code. These are real ideas with named scope, but they're scaffolding, not proof of anything beyond planning ability.

## What this does *not* prove yet

- No evidence of collaborating on someone else's codebase (no external PRs, no code review threads).
- No long-running project (everything is under ~30 commits, most under 10).
- No production-scale system (biggest app, Meridian, is still pre-launch).
- Testing discipline exists in one repo, not as a habit across projects.

## Bottom line

As of right now, this is an **early-stage, high-output solo builder** profile: real full-stack TypeScript ability (auth, data layer, tests) in one project, real Python data-wrangling in another, and a genuine publishing operation — surrounded by several parked ideas. The honest next proof points would be: shipping Meridian publicly, adding tests/CI to the Python projects, and collaborating in the open on someone else's repo.

---

## Attestation

**Assessed by:** GitHub Copilot (AI code-review assistant), based on a direct audit of commit history, file trees, and READMEs across all 11 repos under @knightingale408.
**Date:** October 19, 2026 (America/Los_Angeles)
**Rating:** 4/10 — **"Promising builder."**
**Basis:** Scope limited to repo content as of the date above; not a credential, not a guarantee of future work, and subject to change as the repos change. Re-run this audit periodically to keep the rating current.
