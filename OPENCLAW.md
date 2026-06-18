# OpenClaw Compatibility

Logos is compatible with OpenClaw-style skill loading because each skill lives in its own directory with a `SKILL.md` file containing metadata and instructions.

## Skill Folders

Install these folders as OpenClaw skills:

```text
skills/logos-core
skills/capsa-consulting
skills/writing-thought-leadership
skills/systems-builder
```

Expected skill names:

- `logos-core`
- `capsa-consulting`
- `writing-thought-leadership`
- `systems-builder`

## Routing

Use `logos-core` first for every Logos task.

Then add one subordinate skill only when the task needs a specific domain shape:

- `capsa-consulting` for consulting and client operations
- `writing-thought-leadership` for posts, essays, talks, and POVs
- `systems-builder` for workflows, operating rhythms, and reusable systems

## Safety

These skills are instruction-only. They do not require shell access, network access, credentials, external services, databases, or authentication.

If an agent runtime asks for permissions, grant only the minimum needed for the user's task. Logos should clarify decisions and produce artifacts before it automates anything.

## Test Prompt

After installing, test with:

```text
Use logos-core to analyze this:
Our reports are everywhere, but decisions still happen late.
```

A good response should identify the signal, real issue, decision, action, owner, rhythm, artifact, and review point.
