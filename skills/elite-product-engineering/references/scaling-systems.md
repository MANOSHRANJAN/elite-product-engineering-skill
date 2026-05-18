# Scaling Systems Reference

Use this for performance, reliability, observability, cost, security, data, and infrastructure scale.

## First Principles

- Identify the bottleneck with measurement before redesigning.
- Scale the constrained path, not the whole system.
- Prefer simple vertical or managed-service improvements before distributed complexity.
- Make failure visible before adding automation.

## Performance

- Measure p50, p95, p99 latency and throughput for the user-critical paths.
- Inspect database query plans, N+1 calls, unbounded lists, large payloads, cold starts, asset size, and cache headers.
- Add pagination, indexes, batching, background jobs, and caching where evidence supports them.
- Keep cache invalidation explicit and testable.

## Reliability

- Add timeouts to network and provider calls.
- Use retries only for safe transient failures and combine them with backoff.
- Add idempotency keys for payments, webhooks, job processing, and external side effects.
- Use queues for slow or bursty work.
- Design degradation paths for non-critical providers.

## Observability

- Log request ids, user or tenant ids where safe, operation names, provider names, error classes, and latency.
- Redact secrets, tokens, personal data, and prompt-sensitive content.
- Track business metrics beside technical metrics for product-critical flows.
- Add alerts for symptoms users feel: elevated error rate, latency, failed jobs, payment failures, crash rate, and AI provider failure.

## Data and Security

- Enforce authorization at the data access boundary, not only in UI.
- Use migrations for schema changes and define rollback or forward-fix strategy.
- Back up important data and test restore paths for mature products.
- Separate tenants in queries, caches, object storage paths, analytics, and AI retrieval.
- Rotate and scope credentials; avoid long-lived broad tokens.

## Cost

- Attribute cost by feature, tenant, model, queue, storage class, or endpoint when possible.
- Add budgets and alerts before scale events.
- Reduce waste through right-sized resources, caching, lifecycle policies, and batch processing.
- For AI systems, watch token spend, embedding rebuilds, vector storage, tool-loop retries, and failed-generation retries.
