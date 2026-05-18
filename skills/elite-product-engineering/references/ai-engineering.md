# AI Engineering Reference

Use this when implementing or reviewing LLM, agent, RAG, recommendation, automation, or AI-assisted product features.

## Product Fit

- Define the user job before choosing a model or agent pattern.
- Prefer deterministic code for deterministic work; use AI where language understanding, reasoning, ranking, extraction, generation, or messy input handling creates real leverage.
- Make AI features inspectable: show sources, reasoning summaries when useful, confidence, and recovery paths.
- Design for failure: refusal, low confidence, malformed output, tool failure, provider outage, timeout, and cost cap.

## Architecture

- Keep model calls behind a narrow service boundary.
- Store prompts, schemas, and tool definitions where they can be versioned and reviewed.
- Use structured outputs for app-critical data.
- Validate every model-produced object before it reaches persistence, payments, permissions, or external side effects.
- Separate retrieval, reasoning, action, and presentation concerns.
- Add idempotency for AI-triggered writes and tool calls.

## RAG

- Confirm the corpus, freshness requirement, permissions model, chunking strategy, embedding model, metadata filters, and citation needs.
- Evaluate retrieval separately from generation.
- Use hybrid search or metadata filters when semantic search alone is too broad.
- Include source identifiers in generated answers when the product needs trust.
- Prevent cross-tenant leakage with authorization checks before retrieval and before display.

## Agents

- Use an agent only when the task requires iterative planning, tool use, or adapting to unknown intermediate state.
- Keep tools narrow, typed, auditable, and permission-aware.
- Require confirmation before irreversible external actions.
- Log tool calls, inputs after redaction, outputs, latency, and errors.
- Prefer bounded loops with explicit stopping conditions.

## Evals

- Create small eval sets before tuning prompts heavily.
- Include success, edge, adversarial, and regression cases.
- Track accuracy, refusal quality, latency, cost, and user-visible failure rate.
- For generated text, combine rubric checks with golden examples and targeted assertions.
- Run evals in CI when prompts, tools, retrieval, or model versions change.

## Cost and Latency

- Cache stable AI outputs when allowed.
- Stream long responses when the UI benefits.
- Use smaller models for classification, routing, extraction, and simple transformations.
- Add request budgets, timeout handling, retries with backoff, and fallback behavior.
- Measure token volume and model latency per feature, not only globally.
