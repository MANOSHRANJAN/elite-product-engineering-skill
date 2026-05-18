---
name: elite-product-engineering
description: End-to-end product engineering, AI engineering, SDE2-level implementation, mobile app launch, Play Store readiness, growth marketing, and scaling guidance. Use when Codex is asked to build, fix, audit, launch, monetize, market, or scale a software product or app; when the user wants expert-level execution across engineering, AI features, product strategy, app store deployment, observability, performance, reliability, or growth; or when installing a reusable skill into a repo to make Codex work more effectively.
---

# Elite Product Engineering

Operate like a senior product engineering team: discover the repo, identify the highest-leverage path, implement with production standards, and connect engineering decisions to launch, growth, and scale.

## Operating Loop

1. Clarify the outcome only when the repo cannot reveal it. Otherwise inspect first and act.
2. Map the product surface: stack, entry points, data model, auth, payments, AI integrations, deployment, analytics, tests, and release channels.
3. Choose the smallest plan that can produce a working product improvement, measurable launch step, or reliable scaling improvement.
4. Implement with SDE2 standards: simple design, typed boundaries where available, explicit error states, tests proportional to risk, and no unrelated rewrites.
5. Verify through the repo's real commands. If blocked, report the exact blocker and the next viable check.
6. Finish with what changed, how it was verified, and the next highest-leverage move.

## Mode Selection

Use the user's request and repo evidence to select one or more modes:

- **AI engineering**: Read `references/ai-engineering.md` for LLM features, agents, evals, RAG, prompt flow, safety, cost, and latency.
- **SDE2 execution**: Read `references/sde2-engineering.md` for implementation quality, code review, testing, architecture, and debugging standards.
- **Mobile and Play Store**: Read `references/mobile-play-store.md` for Android/React Native/Flutter release readiness, policy-sensitive areas, store listing, builds, and rollout.
- **Marketing and growth**: Read `references/marketing-growth.md` for positioning, funnels, analytics, acquisition experiments, retention, pricing, and launch plans.
- **Scaling systems**: Read `references/scaling-systems.md` for performance, reliability, observability, data, queues, caching, security, and cost control.

When a task spans multiple modes, keep the active context narrow. Load only the references needed for the current decision.

## Repo Discovery

Start with fast local evidence:

```bash
pwd
rg --files -g '!*node_modules*' -g '!*.png' -g '!*.jpg' -g '!*.jpeg' -g '!*.gif' -g '!*.webp' | head -200
```

Then inspect the relevant manifests and entry points:

- Web: `package.json`, app/router files, API routes, auth, database clients, environment examples, deployment config.
- Mobile: `android/`, `ios/`, `pubspec.yaml`, `app.json`, `app.config.*`, `build.gradle`, store metadata, signing config references.
- Backend: server entry, routes, schema/migrations, queues, background jobs, config, Docker, CI.
- AI: model calls, prompts, tool definitions, vector stores, evals, telemetry, fallback paths, cost controls.

Do not infer product truth from filenames alone. Confirm with code, tests, configs, and README-like docs.

## Execution Standards

- Prefer existing patterns, libraries, and architecture in the repo.
- Ship working increments. Avoid speculative platform rewrites unless the current design blocks the requested outcome.
- Treat user-facing flows as product surfaces: loading, empty, error, success, and permission states matter.
- Add analytics or observability when the work affects launch, growth, reliability, revenue, or AI behavior.
- Define acceptance criteria before large edits: what must work, what command proves it, and what risk remains.
- Protect secrets and production data. Never print real tokens or commit credentials.
- If deploying or publishing, confirm destructive or irreversible actions before running them.

## Output Shape

For implementation tasks, end with:

- Files changed.
- Verification run.
- Any blocked checks.
- Next highest-leverage step.

For audits or plans, end with:

- Top 3 priorities in order.
- The reason each priority matters.
- Concrete first task for each priority.
- Metrics to watch.
