# Getting started with Prism

How to get a useful verdict from Prism, and how to get better ones over time. For installation, see the [README](../README.md#install).

## 1. Bring a decision, not a question

Prism works on a choice between options, with something at stake. Open questions get an answer about what Prism can do, not a council.

- Weak: "How do I find more clients?"
  Better: "For the next 3 months, should I post on LinkedIn twice a week or ask my past clients for referrals?"
- Weak: "Is my pricing right?"
  Better: "Should I raise my day rate from €600 to €750 for new clients, or keep it and add a premium package?"
- Weak: "What am I missing in my business?"
  Better: "Should I drop my training offer to focus on Notion setups?"

Two or three options are enough. If your options aren't clear yet, Prism asks one question to get them.

Start your message with "prismatize this:", or use `/prismatize` in Claude Code.

## 2. Give it your context

Advice that ignores your prices, clients and capacity is generic advice. Prism looks for your business context before running, and asks only for what this decision needs.

- **Nothing set up yet:** Prism lists the 2 to 4 facts it is missing for this decision. Answer them in a couple of lines, or let it run anyway: the verdict is then marked **low context**, and you should read it as a first pass.
- **To stop answering the same questions:** keep a context document. Any format works: a Notion page, a Google Doc, a PDF, a Markdown file named `prismatize-context.md`. The [context template](../plugins/prism/skills/prismatize/context-template.md) lists what matters; the [context guide](context-guide.md) explains each part.
- **No clients yet?** The template has a "Starting out" section. Expect "Not yet" more often: with few facts, it is often the right answer.

Keep dated facts current. Prism asks when something it relies on is more than three months old.

## 3. Read the verdict

Every run ends with one of four outcomes:

- **Verdict:** one recommendation, when the evidence supports it.
- **Top 3:** ranked options. Only when you ask for alternatives ("give me the top 3").
- **Not yet:** the decision depends on a fact nobody has. You get the cheapest test to get it, a deadline, and the results that mean go or stop. This is a full answer, not a dodge.
- **Escalate:** the call belongs to someone else: a lawyer, an accountant, a partner, your family. You get the questions to bring them and what not to do before talking to them.

In a verdict, three lines matter more than the recommendation itself:

- **Main risk:** what could make this go wrong. If you can't live with it, say so and run again with that constraint.
- **What would change this:** the fact or result that would flip the verdict. Watch for it.
- **Do first:** one action you can start within 48 hours. If you don't do it, the decision didn't happen.

For client-facing decisions, **Objection to prepare for** gives the sentence a prospect is most likely to say, in their words.

## 4. Look behind the verdict

Ask "show the council" to see:

- the five advisors' answers, with their names
- both reviews: the ranking and the gaps nobody covered
- the checker's result, and the first draft if it was revised
- the comparable offers found online, with links, if a market check ran

Do it when the verdict surprises you, or when it agrees with what you already wanted. A clash between advisors is often more useful than the verdict.

Ask for "detailed" before the run to get where the advisors agree, where they clash, and what the review caught, in the result itself.

## 5. After the verdict

- Do the "Do first" action.
- When results come in, add them to your context document: what you did, what happened, with the date. Never paste Prism's verdict into your context: past verdicts bias the next council.
- If you want to track decisions, keep a short log (date, decision, verdict, test, review date). Prism can write the entry for you.

## 6. When it goes wrong

- **The verdict feels generic:** the context is thin. Check which context Prism said it used before running, or the **Low context** mark on the result, add what's missing, run again.
- **It refused to run:** your request was a question, a brainstorm or a writing task. Rephrase it as a choice between options.
- **"Reduced Prism" in the result:** your platform can't run independent advisors, so the five angles were written in one pass. Fine for a first look; use Claude Code for decisions that matter.
- **The run is slow or uses a lot of your limit:** a full run calls nine agents, ten with a revision. Use it for decisions that deserve it.

Prism is decision support, not legal, tax or financial advice. When a decision needs that, it says so.
