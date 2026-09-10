# Validation evidence, 2026-09-10

Commands: npm ci --ignore-scripts; npm test; npm audit --audit-level=moderate; npm run benchmark.

Browser: 5 tests passed including actual Chromium 152 extraction and official MCP SDK stdio. Audit: zero vulnerabilities. Single fixture extraction: 132.2 ms. Playwright CDN was unavailable locally, so npm @sparticuz/chromium 152.0.0 supplied the executable; BROWSER_TEST_UNSANDBOXED=1 explicitly used for this managed local environment. This does not validate production sandboxing. CI uses the default sandbox and standard Playwright install. Docker image build not locally validated.

CI initially failed on Ubuntu latest because AppArmor denied Chromium user namespaces. The gate now uses Ubuntu 22.04, preserving Chromium sandboxing. Local followup 5 tests pass after process-group deadline isolation; CI sandbox result is recorded in the PR checks rather than inferred from local execution.
