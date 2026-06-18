# Installation

Logos is a portable instruction package. You do not need to run a server, create a database, or connect an external service.

Pick the agent you want to use, then follow that section.

## Get Logos

Clone or download the repository:

```powershell
git clone https://github.com/beyondthesoftware/logos-v0.git
cd logos-v0
```

If you do not use Git, download the repository as a ZIP from GitHub and unzip it somewhere you can find later.

## Codex

Use this path if you want Logos to appear as skills inside Codex.

### Install

On Windows PowerShell, from inside the downloaded `logos-v0` folder:

```powershell
.\adapters\codex\install.ps1
```

If PowerShell blocks the script, run:

```powershell
powershell -ExecutionPolicy Bypass -File .\adapters\codex\install.ps1
```

The installer copies the Logos skills into your local Codex skills folder:

```text
%USERPROFILE%\.codex\skills
```

### Confirm

Restart Codex or start a new Codex thread. You should be able to use:

- `$logos-core`
- `$capsa-consulting`
- `$writing-thought-leadership`
- `$systems-builder`

Test prompt:

```text
Use $logos-core to analyze this:
Our reports are everywhere, but decisions still happen late.
```

## ChatGPT

Use this path for ChatGPT custom instructions or a custom GPT.

### Minimum Setup

Copy the contents of these files into your ChatGPT instructions or GPT knowledge/instructions:

```text
core/SKILL.md
adapters/chatgpt/CHATGPT.md
```

Add one overlay only if the GPT has a specific job:

- consulting and client operations: `overlays/capsa-consulting/SKILL.md`
- thought leadership writing: `overlays/writing-thought-leadership/SKILL.md`
- systems and workflows: `overlays/systems-builder/SKILL.md`

### Confirm

Test with:

```text
Use Logos to turn this into Signal, Pattern, Real issue, Decision, Action, Owner, Rhythm, Artifact, and Review:
Our team tracks metrics every week, but behavior is not changing.
```

## Claude Code

Use this path if you want Claude Code to follow Logos while working in a repository.

Copy:

```text
adapters/claude-code/CLAUDE.md
```

Into the root of the target project as:

```text
CLAUDE.md
```

Keep the Logos repository available so Claude can read:

```text
core/SKILL.md
overlays/
templates/
evals/
```

## OpenClaw

Use this path for OpenClaw-style skill folders.

Run the installer and point it at your OpenClaw skills directory:

```powershell
.\adapters\openclaw\install.ps1 -OpenClawSkillsPath "C:\path\to\openclaw\skills"
```

The installer copies these skills:

- `logos-core`
- `capsa-consulting`
- `writing-thought-leadership`
- `systems-builder`

See `adapters/openclaw/OPENCLAW.md` for routing and safety guidance.

## OpenAI Agents SDK

Use Logos as instruction modules.

Start with:

```text
core/SKILL.md
```

Then add one overlay only when the agent's job requires it:

- `overlays/capsa-consulting/SKILL.md`
- `overlays/writing-thought-leadership/SKILL.md`
- `overlays/systems-builder/SKILL.md`

Keep Logos instruction-only unless your agent intentionally needs tools.

## Troubleshooting

If the skill does not appear in Codex, restart Codex or start a new thread.

If PowerShell blocks the install script, use the `-ExecutionPolicy Bypass` command shown above.

If you downloaded a ZIP, make sure `$repo` or your terminal is pointed at the unzipped `logos-v0` folder, not the parent downloads folder.

If an agent gives a generic answer, load `core/SKILL.md` first and ask for the full Logos loop:

```text
Signal, Pattern, Real issue, Decision, Action, Owner, Rhythm, Artifact, Review
```
