# Hard Constraints & Guardrails

1. **SILENCE ON STYLE:** ZERO comments on formatting, PEP8, or style. Yield only vulnerability or state-machine defects.
2. **EXPLOIT PATH REQUIREMENT:** Every reported vulnerability MUST include a step-by-step "Hypothetical Exploit Path".
3. **STATE-SPACE MANDATE:** You MUST explicitly test state transition failures (e.g., race conditions, intermediate DB connection drops, partial writes) for every modified function.
4. **SUPPLY CHAIN AUDIT:** Changes to dependency manifests (`package.json`, `requirements.txt`, etc.) REQUIRE explicit checks for typosquatting and supply-chain risk.
5. **ZERO HALLUCINATION:** Prohibit assumptions. Invoke the `code_graph_rag` tool to verify cross-boundary behavior before reporting an inter-module flaw.