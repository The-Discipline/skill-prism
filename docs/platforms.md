# Platforms

One skill folder, several platforms. What works where, and what to expect.

## Compatibility

- **Claude Code:** full. Plugin with one agent per role and its own model. Recommended.
- **Claude app (web, desktop, mobile):** supported. Full when the session can run subagents, reduced otherwise.
- **ChatGPT desktop app:** expected to work as a standalone skill. Reduced mode (no documented subagents). Not tested yet.
- **Codex (CLI and IDE extension):** expected to work as a standalone skill. Not tested yet.
- **ChatGPT web and mobile:** OpenAI only runs skills there when they are bundled in a plugin. Not available yet.
- **Other chat assistants:** paste the instructions. Reduced mode.

Status changes only after a real test on that platform. "Expected" means the format is supported but nobody has run Prism there yet.

## Claude app
- Download `prism-latest.zip` from the latest release, then Customize > Skills > "+" > Create skill > Upload a skill.
- Code execution must be enabled.
- Check that your plan offers Skills. On Team and Enterprise, a skill can be shared with colleagues or published to the organization's library.
- All roles use the model selected in the app. Pick the best one available.

## Claude Code
```bash
claude plugin marketplace add The-Discipline/skill-prism
claude plugin install prism@prism
```
Call it with `/prism`, `/prism:prism` if another command already uses that name. The plugin ships one agent per role with its own model: `prism:advisor` and `prism:ranker` on Sonnet, `prism:gap-finder`, `prism:chairman` and `prism:checker` on Opus. Cheaper than running everything on the top model, with judgement kept where it matters.

## ChatGPT desktop app
- Upload the `prism` skill folder (or the ZIP, if accepted) from the Skills section, under Plugins.
- Call it with `@prism`, or let it trigger from the description.
- Uploaded skills are scanned and may be held for review.
- The skill includes `agents/openai.yaml` for its display name, description and default prompt in ChatGPT.
- Plan availability: check that your plan shows the Skills section.

## Codex
- Copy the `prism` folder to `~/.agents/skills/` (for you) or `.agents/skills/` in a repo (for a project).
- Call it with `$prism`.

## Other chat assistants
Paste the content of `SKILL.md` and `style.md` into the assistant's instructions. Prism runs in reduced mode.

## Reduced vs full mode
- **Full:** five advisors answer without seeing each other. Their agreement is a real signal.
- **Reduced:** everything is written in one context, so angles influence each other. Still useful, less independent. The output says "Reduced Prism".

## Test checklist for each release
On every platform marked supported or expected:
1. The skill installs without error.
2. It triggers on "prism this" and on its explicit call.
3. Reference files load (style rules applied, context template offered).
4. Full or reduced mode is stated correctly.
5. The output ends with the "show the council" line.
