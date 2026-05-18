# SDE2 Engineering Reference

Use this for code changes, debugging, reviews, architecture decisions, and production hardening.

## Implementation Bar

- Read before editing. Identify current patterns, naming, state flow, data access, and test style.
- Keep the change scoped to the requested behavior and nearby contracts.
- Choose boring, explicit code over clever abstractions.
- Add an abstraction only when it removes real duplication or clarifies a stable boundary.
- Preserve public APIs unless the task explicitly allows breaking changes.
- Handle loading, empty, invalid, unauthorized, not found, conflict, and failure states where relevant.

## Debugging

- Reproduce the issue or identify the closest executable proof.
- Trace from symptom to boundary: UI, API, service, persistence, external provider, config, deployment.
- Prefer logs, tests, and local commands over guesses.
- Fix the cause, then add a regression test when the bug is likely to return.
- If the issue is environmental, document the exact env/config dependency.

## Testing

- Start with the repo's existing test commands and style.
- Add unit tests for pure logic and contract-heavy helpers.
- Add integration tests for API/data/auth/payment/workflow boundaries.
- Add UI tests when user-visible state transitions are the risk.
- Avoid brittle snapshots unless the repo already relies on them and the UI is stable.
- When tests cannot run, state the command attempted and the reason.

## Code Review Checklist

- Correctness: Does it satisfy the requested behavior in normal and edge cases?
- Contracts: Are types, schemas, migrations, API responses, and permissions aligned?
- Security: Are secrets, auth, tenancy, injection, file upload, and external calls safe?
- Reliability: Are retries, timeouts, idempotency, and error paths appropriate?
- Maintainability: Is the code understandable in the repo's existing style?
- Performance: Is the hot path efficient enough for expected scale?
- Observability: Can failures be diagnosed in production?

## Delivery

- Run formatting/lint/tests that match the files touched.
- Do not hide failing checks. Separate failures caused by the change from pre-existing failures when possible.
- Summarize files changed and verification succinctly.
