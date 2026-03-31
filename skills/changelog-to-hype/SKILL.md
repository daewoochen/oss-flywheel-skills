---
name: "changelog-to-hype"
description: "Use when raw commits, merged PRs, or a release diff need to become release notes and distribution copy. This skill groups changes by user impact, finds the real narrative, and produces changelogs, post copy, and launch-ready summaries without overselling."
---

# Changelog to Hype

Turn messy release inputs into crisp release outputs.

## When to use

- A release is done but the communication layer is still missing.
- Commit logs are noisy and need a user-facing story.
- A maintainer wants release notes plus short-form distribution copy.
- Multiple channels need consistent messaging from the same change set.

## Workflow

1. Start from user impact, not commit order.
   - Group changes by what users can now do, save, or avoid.
   - Separate meaningful changes from maintenance noise.
2. Find the release narrative.
   - What is the headline improvement?
   - Why should existing users upgrade?
   - Why should new users care now?
3. Write the core assets.
   - Release notes
   - Changelog summary
   - X or LinkedIn post
   - Email or newsletter blurb
4. Keep the tone proportional.
   - Strong releases can sound excited.
   - Small releases should sound clean and useful, not inflated.
5. Preserve technical fidelity.
   - Keep risky changes, migrations, and breaking edges explicit.

## Expected Deliverables

- User-facing release notes
- A short changelog summary
- 1 to 3 launch or distribution snippets
- Upgrade notes if needed
- A suggested headline for the release

## Output Style

- Organize by user value, not git noise.
- Remove internal wording that makes no sense outside the team.
- Keep claims precise and defensible.

## References

- Read [references/distribution-kit.md](references/distribution-kit.md) when you need reusable release-note shapes or channel-ready formats.
