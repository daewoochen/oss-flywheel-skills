---
name: "readme-rescue"
description: "Use when a project's README is confusing, bloated, or failing to activate new users. This skill audits the current entry point, rewrites the structure around clarity and quick wins, and preserves technical accuracy while making the project easier to understand."
---

# README Rescue

Rebuild a README so a new visitor can understand the project, try it quickly, and decide whether to keep reading.

## When to use

- The README is technically correct but hard to scan.
- Important setup or usage steps are buried.
- The project has grown and the docs no longer match the main audience.
- A repo needs clearer positioning before a launch or share.

## Workflow

1. Audit the current entry path.
   - Read the README, docs landing page, examples, and any install commands.
   - Identify the intended audience and the actual audience implied by the current docs.
2. Find the largest comprehension gaps.
   - Unclear headline
   - No quickstart
   - No example output
   - Feature list before problem statement
   - Missing architecture or FAQ when users clearly need it
3. Rewrite in reading order.
   - Put the problem and outcome first.
   - Add the fastest path to first success.
   - Only then add features, architecture, and reference links.
4. Make the examples carry the document.
   - Prefer one strong worked example over many vague bullets.
   - If the repo is complex, add a minimal example and a deeper one.
5. Preserve truth.
   - Do not hide limitations.
   - If the docs are still blocked on missing product decisions, call that out explicitly.

## Expected Deliverables

- A short audit of what is not working
- A new README structure
- Rewritten opening sections when appropriate
- Quickstart and example improvements
- Optional FAQ or architecture section suggestions

## Output Style

- Tight and skimmable
- More examples, fewer slogans
- Clear section order with low reader effort

## References

- Read [references/readme-structures.md](references/readme-structures.md) when you need reusable section orders or quickstart patterns.
