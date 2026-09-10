# ADR 0001: a narrow, verifiable local runtime

Status: accepted for this v2 increment.

The previous prototype mixed provider credentials, remote content and broad execution permissions. The supported v2 runtime treats remote content as inert data and exposes fixed operations with strict limits. Historical code remains for migration reference, but the former entrypoint fails closed.

Assets are local files, provider secrets and host network access. Callers and page contents are untrusted. MCP is an operator-owned stdio child process, not a public network server. No token is embedded in source. Supply-chain dependencies are pinned and checked by npm audit. Local host administrators remain trusted.

Inputs are bounded before expensive work. Hashes establish content identity, not trusted authorship. Benchmarks are small fixtures, not SOTA evidence. Generated MetaHarness sessions and field memory need deployment-owned storage and identity configuration; automatic promotion remains disabled. No signed deployment or live federation membership is claimed.

Acceptance: npm ci --ignore-scripts; npm test; npm run benchmark; npm audit --audit-level=moderate. Browser Chromium tests require a supported sandboxed host. Any explicit local unsandboxed test is labelled in evidence and is not accepted as production sandbox validation.
