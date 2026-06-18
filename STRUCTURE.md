# Package Structure

Logos is organized by ownership.

```text
logos-skill/
  README.md
  THEOLOGY.md
  STRUCTURE.md
  INSTALL.md
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
    chatgpt/
    claude-code/
    openclaw/
```

## Core

`core/` contains the base Logos skill.

Start here for every Logos-shaped task:

```text
core/SKILL.md
```

## Overlays

`overlays/` contains domain-specific extensions.

Use one overlay when the task calls for it:

- `overlays/capsa-consulting` for client operations, software/process gaps, executive alignment, and consulting artifacts
- `overlays/writing-thought-leadership` for posts, essays, talks, and executive POV writing
- `overlays/systems-builder` for workflows, operating rhythms, ownership models, and reusable systems

Overlays extend the core. They do not replace it.

## Templates

`templates/` contains reusable artifact formats.

Use templates when the answer should become a repeatable operating artifact.

## Evals

`evals/` contains test inputs and scoring guidance.

Use evals to check whether Logos responses actually separate signal from noise, clarify decisions, and produce action.

## Adapters

`adapters/` contains runtime-specific guidance and install scripts.

- `adapters/codex` for Codex skill installation
- `adapters/chatgpt` for ChatGPT and GPT configuration
- `adapters/claude-code` for Claude Code project instructions
- `adapters/openclaw` for OpenClaw-style skill installation
