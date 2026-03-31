# OSS Flywheel Skills

Interesting agent skills for people who ship in public.

This repository is a curated set of Codex-compatible skills for indie hackers, open-source maintainers, and small product teams. The theme is simple: turn code into momentum. Better README pages, clearer demos, sharper launches, and friendlier contributor ramps usually beat growth hacks.

These skills are designed to be:

- Useful on a real repo today
- Memorable enough to share with teammates
- Focused on the loops that actually grow projects

## Skills

| Skill | What it helps with | Example prompt |
| --- | --- | --- |
| `repo-star-forge` | Audit a repo page for star conversion and fix the highest-leverage blockers | `Use $repo-star-forge to rewrite this README so a first-time GitHub visitor understands the value in 20 seconds.` |
| `show-hn-launchpad` | Package a launch for Show HN, Product Hunt, X, and Reddit without sounding fake | `Use $show-hn-launchpad to turn this release into a Show HN post kit.` |
| `issue-to-demo` | Turn an issue, feature, or spec into a demo story, shot list, and proof assets | `Use $issue-to-demo to turn this feature into a 45-second demo plan.` |
| `readme-rescue` | Rewrite confusing or boring README files into faster activation paths | `Use $readme-rescue to rebuild this README around quickstart and examples.` |
| `contributor-ramp` | Make a project easier for first-time contributors to join and stick with | `Use $contributor-ramp to create a better first-hour contributor experience.` |
| `changelog-to-hype` | Turn raw commits and PRs into release notes and distribution copy | `Use $changelog-to-hype to convert the last release into notes, a thread, and a short post.` |

## Quick Install

Clone the repository:

```bash
git clone https://github.com/<your-account>/oss-flywheel-skills.git
cd oss-flywheel-skills
```

List or install skills into Codex's default user skill directory:

```bash
./scripts/install.sh list
./scripts/install.sh repo-star-forge
./scripts/install.sh all
```

By default the script links skills into `${CODEX_HOME:-$HOME/.codex}/skills`. If you prefer a different destination:

```bash
./scripts/install.sh repo-star-forge /path/to/custom/skills
```

You can also symlink individual skill folders manually into any standard Agent Skills location such as `~/.codex/skills` or `.agents/skills`.

## Why This Collection

A lot of public skill repositories are either too generic or too infrastructure-heavy for solo builders. This one deliberately sits closer to the moments that create compounding visibility:

1. Someone lands on your repo.
2. They understand the project fast.
3. They see proof that it works.
4. They share it, try it, or contribute.

That loop is where stars usually come from.

## Structure

Each skill stays small and follows the Agent Skills pattern:

```text
skills/<skill-name>/
├── SKILL.md
├── agents/openai.yaml
└── references/
```

`SKILL.md` contains the workflow. `references/` contains only the extra details that are worth loading on demand.

## Contributing

Open an issue or PR with one strong skill instead of a giant dump of prompts. The bar is:

- Clear trigger conditions
- Outputs that save real time
- Minimal fluff
- Honest, high-signal workflow

## Inspiration

This repo was shaped by patterns that are working in public skill collections, especially:

- [huggingface/skills](https://github.com/huggingface/skills)
- [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills)
- [feiskyer/codex-settings](https://github.com/feiskyer/codex-settings)

## License

MIT
