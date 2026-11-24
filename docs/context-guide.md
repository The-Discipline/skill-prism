# Context guide

Prismatize gives advice that fits you only when it knows your business. This guide explains how to fill the context file.

## Where to put it
- Any document works: an offers page, a pitch deck, a Notion page, your notes. Prismatize reads what it finds and asks for what's missing. The template is a checklist of what matters.
- For the best results, save your copy of [the template](../plugins/prismatize/skills/prismatize/context-template.md) as `prismatize-context.md` in your project, or attach it when you ask a question. Tagging facts yourself ([observed] vs [assumed]) is the one thing Prismatize can only guess otherwise.
- Keep it private. This repo's `.gitignore` excludes `prismatize-context.md` and `decisions.md` so they can't be committed by accident.

## The tags
- **[observed]:** happened or measured. "3 of my last 5 clients came from LinkedIn."
- **[assumed]:** you believe it, you haven't checked. "Agencies would pay more."
- **[goal]:** what you want. "€8k per month by June."
- **[constraint]:** a limit. "No more than 4 client days per week."

Prismatize weights [observed] above [assumed]. Tagging honestly is what stops a hypothesis from being treated as a fact.

## Dates
Add a month to anything that changes: prices, pipeline, revenue. Prismatize asks whether an item older than 3 months still holds.

## What to update, and when
- **Rarely:** business, offers, constraints
- **Monthly:** the "Now" section
- **After each decision you track:** what actually happened, in "Decisions and outcomes"

Record outcomes, never Prismatize's verdicts. Feeding past verdicts back would bias the next council toward its own earlier answers.

## No context file?
Prismatize still runs. Before the council, it names the 2 to 4 facts the decision needs and lets you answer them, run anyway (verdict marked "low context"), or set up the file.

See [a filled example](../examples/context-example.md).
