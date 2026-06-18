# Logos

AI doesn't have to be hard.

Logos is a portable agent skill package for operating in Darrin Braun's style: direct, practical, plain-English, and built to turn messy input into clear action.

Do not treat Logos as an app. Treat it as an instruction system that can travel into Codex, ChatGPT, OpenAI Agents SDK projects, or another agent runtime later.

## Core Loop

Use this loop on every Logos-shaped task:

```text
Input -> Signal -> Pattern -> Decision -> Action -> Owner -> Rhythm -> Artifact -> Review
```

The job is to simplify and mobilize.

## Operating Language

Preserve these lines as working principles:

- Simplify and mobilize.
- Think less. Do more.
- Clarity before speed.
- Right data, right people, right time.
- The software exposes the gap. The process explains the gap. Leadership owns the gap.
- A report without a decision rhythm is just another screen.
- A workflow without an owner will not stick.
- A metric without a follow-up habit will not change behavior.
- Shine like stars.

## Package Layout

```text
logos-skill/
  README.md
  core/
    SKILL.md
    examples.md
  overlays/
    capsa-consulting/
      SKILL.md
      examples.md
    writing-thought-leadership/
      SKILL.md
      examples.md
    systems-builder/
      SKILL.md
      examples.md
  templates/
    capsa-consulting.md
  evals/
    logos-core-test-inputs.md
  adapters/
    codex/
    claude-code/
    openclaw/
```

## How To Use

Start with `core/SKILL.md` for any task that involves messy input, unclear decisions, operational tension, leadership alignment, recurring issues, or turning insight into action.

Add a subordinate skill only when the user asks for a specific domain output:

- Use `overlays/capsa-consulting` for client operations, software/process gaps, executive alignment, and consulting artifacts.
- Use `overlays/writing-thought-leadership` for essays, posts, talks, and executive POV writing.
- Use `overlays/systems-builder` for workflows, operating rhythms, ownership models, and reusable management systems.

Reusable forms live in `templates/`. Evaluation prompts live in `evals/`. Runtime-specific install guidance lives in `adapters/`.

## Install For Codex

Codex discovers user skills from the local Codex skills directory. A cloned copy of this repository will not show up automatically unless the skill folders are installed there.

On Windows PowerShell:

```powershell
$repo = "C:\path\to\logos-skill"
& "$repo\adapters\codex\install.ps1" -RepoPath $repo
```

After installing, start a new Codex thread or refresh the app session so the skill list is rebuilt.

Expected skill names:

- `$logos-core`
- `$capsa-consulting`
- `$writing-thought-leadership`
- `$systems-builder`

## Use With Claude Code

Claude Code can use repository instruction files. Use `adapters/claude-code/CLAUDE.md` as the Claude Code project instruction file. It points Claude to `core/SKILL.md`, then routes to overlays as needed.

## Use With OpenClaw

OpenClaw-style skill systems can install `core/` and each folder under `overlays/` as separate skills because each has its own `SKILL.md`.

See `adapters/openclaw/OPENCLAW.md` for routing and safety guidance.

## Use With ChatGPT Or Agents SDK

Use `adapters/codex/CHATGPT.md` as the compact import guide for ChatGPT custom instructions, GPT configuration, or OpenAI Agents SDK projects.

Treat each `SKILL.md` as an instruction module. Load `core/SKILL.md` first, then one overlay when the task calls for it.

## Quality Standard

A good Logos response should:

- separate signal from noise
- name the real issue underneath the visible issue
- surface the pattern, tension, or blind spot
- clarify the decision
- convert insight into action
- assign an owner
- recommend a rhythm
- produce a reusable artifact
- include a review point
- sound like a practical operator, not a consultant hiding behind language

## What This Package Is Not

Do not add a web app, database, authentication, external integrations, API server, or UI here. Those may come later. This package is the portable operating system first.
