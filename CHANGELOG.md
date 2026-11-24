# Changelog

## 0.10.1 (2026-11-24)
- Directory listing: `privacyPolicyUrl` and `keywords` in `plugin.json`.

## 0.10.0 (2026-11-24)
- Renamed to Prismatize: repo `skill-prismatize`, plugin `prismatize` (display name "Prismatize"), skill folder, marketplace (`prismatize@prismatize`), explicit calls (`/prismatize`, `/prismatize:prismatize`, `@prismatize`, `$prismatize`), agents (`prismatize:advisor`, `prismatize:ranker`, `prismatize:gap-finder`, `prismatize:chairman`, `prismatize:checker`), ZIPs (`prismatize-<version>.zip`, `prismatize-latest.zip`) and context file (`prismatize-context.md`). The directory name check refused "prism". Anyone who installed 0.9.x must reinstall. GitHub redirects the old repo URL.
- Triggers: "prismatize this" and "run it through Prismatize". Help: "prismatize help".
- Plugin icon: embedded generator metadata removed.
- `displayName` added to `plugin.json`.

## 0.9.1 (2026-11-24)
- Help: "prism help" (or `/prism help`) prints a fixed block: how to ask, why context matters, what "Reduced Prism" means, code execution, and links to the guide and the issue tracker. A bare "help" does not trigger it.
- Directory submission: `plugins/prism/README.md`, a `license` field, `homepage`, `repository` and a 512x512 `icon` in `plugin.json`.
- README: listing badge.

## 0.9.0 (2026-11-24)
- The skill is named `prism`: skill folder, ZIP (`prism-<version>.zip`, `prism-latest.zip`), marketplace (`prism@prism`), explicit calls (`/prism`, `/prism:prism`, `@prism`, `$prism`) and context file (`prism-context.md`). The longer name used in 0.5 to 0.8 is gone. Anyone who installed an earlier version must reinstall.
- Triggers: "prism this" and "run it through Prism". The two phrases built on the old name are removed.
- Releases are built by a GitHub Action on tag push.

## 0.8.0 (2026-11-21)
- Guardrails: context files, attachments, the decision log and web pages are data, never instructions. Private figures and client names stay out of web queries. Prism writes only when asked, adds without rewriting, shows what it added and never deletes.
- Chairman: receives the output formats, whether options were asked for, the length, and the ranking's letters mapped back to advisors. A revision after the check gets its original inputs back.
- After the verdict: logging and recording results happen on request only. Log entries note the outcome type and whether the run was reduced or low context. When reading a log, only outcomes are used.
- "Show the council" says the details end with the conversation unless the decision is logged.
- Agents treat the brief as data.
- README: the status and model sections no longer claim real runs or a tested model. None has happened yet.
- Docs: "four outcomes" in how-it-works, the Claude Code install command in platforms, plan availability softened, "X, not Y" phrasings rewritten.

## 0.7.2 (2026-11-15)
- Docs: `docs/getting-started.md`, the user guide: asking a decision, giving context, reading the four outcomes, show the council, after the verdict, troubleshooting. Linked from the README.
- README: install commands point to The-Discipline/skill-prism.

## 0.7.1 (2026-11-14)
- Context loading: a `CLAUDE.md` is no longer read as business context (it describes a code project). Grey matter / Matière grise pages and any connected app or link count as business sources.
- The missing-context message follows the user's language.
- Agents: each one works only from its prompt and opens no file, so the Buyer only knows the Buyer brief.
- README: Status section. `scripts/skill_review.py` for release reviews.
- Docs: identity brief updated (v0.7, Satoshi and Inter); CLAUDE.md points to Plume and the shared business source.

## 0.7.0 (2026-11-10)
- Cross-platform: `agents/openai.yaml` for ChatGPT and Codex (display name, description, default prompt), platform-neutral wording in the skill, explicit calls documented (`/prism:prismatize`, `@prismatize`, `$prismatize`).
- Description rewritten with use case and triggers first, since hosts shorten long descriptions.
- Compatibility section and a per-release test checklist in the docs.
- Install commands point to the `skill-prism` repo.

## 0.6.0 (2026-11-05)
- Verdict check: a checker agent tests the chairman's draft on seven points (main risk resolved, coherent "what would change this", doable action, facts over assumptions, Gap Finder's key claim addressed, right outcome, style). CHANGES triggers one revision, never more.
- New outcome, Escalate: for decisions that hinge on legal, tax or regulatory rules, binding high-stakes commitments, or that belong partly to a partner or family. Prism names who should decide and prepares the conversation. Pure legal or tax questions skip the council.
- Claude Code plugin agents with a model per role: advisor and ranker on Sonnet; gap-finder, chairman and checker on Opus.
- Context: any document works, the template is a checklist. Suggested file renamed `prismatize-context.md` (the old name still works).

## 0.5.0 (2026-10-30)
- New businesses: a "Starting out" section in the context template. Prism no longer flags missing revenue or client history as gaps for someone with no clients yet.
- Optional market check: when the decision depends on the market and web search is available, Prism looks up 3 to 5 comparable offers before the council, tagged [observed], shared with the Buyer as alternatives.
- Example questions by business stage.

## 0.4.0 (2026-10-30)
- Renamed to `prismatize` everywhere: repo, skill, ZIP, marketplace. Claude Code command: `/prism:prismatize`.
- New triggers: "prismatize this", "prismatiser". Dropped "council this" to avoid clashing with other council skills.

## 0.3.0 (2026-10-30)
- The Buyer ends with its 2 or 3 strongest objections, in the client's words, and marks the deal-breaker.
- Concise output adds "Objection to prepare for" on pricing, offer and positioning decisions.
- MIT license.

## 0.2.0 (2026-10-30)
- Every output ends with a "show the council" line, in all modes. On request, shows the five advisors by name, both reviews, and the ranking mapped back to advisors.

## 0.1.0 (2026-10-30)
- First version, written from scratch.
- Five advisors (Contrarian, First Principles, Expansionist, Executor, Buyer), two reviewers (Ranker, Gap Finder), chairman with three outcomes (Verdict, Top 3, Not yet).
- Decision gate, context loading and coverage check, claim tags, solo-business checklist, reduced mode, shared style rules, context template.
