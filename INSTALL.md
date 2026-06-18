# Installation

Use the adapter that matches the agent runtime.

## Codex

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

## ChatGPT

Use `adapters/chatgpt/CHATGPT.md` as the compact import guide for ChatGPT custom instructions or GPT configuration.

Load `core/SKILL.md` first. Add one overlay only when the GPT or conversation has a specific job.

## Claude Code

Use `adapters/claude-code/CLAUDE.md` as the Claude Code project instruction file.

It points Claude to `core/SKILL.md`, then routes to overlays as needed.

## OpenClaw

OpenClaw-style skill systems can install `core/` and each folder under `overlays/` as separate skills because each has its own `SKILL.md`.

Use:

```powershell
$repo = "C:\path\to\logos-skill"
& "$repo\adapters\openclaw\install.ps1" -RepoPath $repo -OpenClawSkillsPath "C:\path\to\openclaw\skills"
```

See `adapters/openclaw/OPENCLAW.md` for routing and safety guidance.

## Agents SDK

Agents SDK projects can use the same instruction modules directly.

Load `core/SKILL.md` as the base instruction. Add one overlay when the agent's job requires it.
