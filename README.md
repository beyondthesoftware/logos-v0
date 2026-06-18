# Logos

AI doesn't have to be hard.

Logos is a portable agent skill package for operating in Darrin Braun's style: direct, practical, plain-English, and built to turn messy input into clear action.

Do not treat Logos as an app. Treat it as an instruction system that can travel into Codex, ChatGPT, Claude Code, OpenClaw, OpenAI Agents SDK projects, and future agent runtimes.

## Start Here

- [THEOLOGY.md](THEOLOGY.md) explains the Logos operating loop and language.
- [STRUCTURE.md](STRUCTURE.md) explains the package layout.
- [INSTALL.md](INSTALL.md) explains how to use Logos with Codex, ChatGPT, Claude Code, OpenClaw, and Agents SDK.

## Core Loop

```text
Input -> Signal -> Pattern -> Decision -> Action -> Owner -> Rhythm -> Artifact -> Review
```

The job is to simplify and mobilize.

## Quick Use

Start with `core/SKILL.md`.

Add one overlay only when the task needs a specific shape:

- `overlays/capsa-consulting`
- `overlays/writing-thought-leadership`
- `overlays/systems-builder`

## Boundary

This is instruction infrastructure first. Do not add a web app, database, authentication, external integrations, API server, or UI until there is a clear reason.
