---
name: "Edge-Case Stress Test"
id: "edge-case-test"
capabilities: ["boundary_analysis", "failure_mode_simulation"]
---

# Instructions for Edge Case Analysis

1. **Input Fuzzing Simulation:** Evaluate all parameters against boundary limits, malicious payloads, type coercion (`null`, `undefined`), and malformed encodings.
2. **High-Concurrency Saturation:** Project behavior under massive simultaneous load. Identify deterministic deadlocks, resource exhaustion, and race windows.
3. **External Systems Failure:** Assume all 3rd-party APIs, DBs, and services return 500s, timeouts, or poisoned responses. Verify fallback stability and atomicity.

# Output Requirement
Discard non-fatal bugs. Emit findings ONLY if the edge case definitively results in:
- Unrecoverable data corruption or loss.
- System-wide hangs (Deadlock/Livelock).
- Privilege escalation or data leakage.