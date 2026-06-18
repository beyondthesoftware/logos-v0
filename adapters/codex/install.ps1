param(
  [string]$RepoPath = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path,
  [string]$SkillsPath = (Join-Path $env:USERPROFILE ".codex\skills")
)

$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Force -Path $SkillsPath | Out-Null

function Install-Skill {
  param(
    [string]$Name,
    [string]$SourcePath,
    [string]$OpenAIYaml
  )

  $target = Join-Path $SkillsPath $Name
  $agents = Join-Path $target "agents"

  New-Item -ItemType Directory -Force -Path $target | Out-Null
  Copy-Item (Join-Path $SourcePath "SKILL.md") (Join-Path $target "SKILL.md") -Force

  if (Test-Path (Join-Path $SourcePath "examples.md")) {
    Copy-Item (Join-Path $SourcePath "examples.md") (Join-Path $target "examples.md") -Force
  }

  New-Item -ItemType Directory -Force -Path $agents | Out-Null
  Copy-Item $OpenAIYaml (Join-Path $agents "openai.yaml") -Force
}

Install-Skill "logos-core" (Join-Path $RepoPath "core") (Join-Path $RepoPath "adapters\codex\logos-core.openai.yaml")
Copy-Item (Join-Path $RepoPath "evals\logos-core-test-inputs.md") (Join-Path $SkillsPath "logos-core\test_inputs.md") -Force

Install-Skill "capsa-consulting" (Join-Path $RepoPath "overlays\capsa-consulting") (Join-Path $RepoPath "adapters\codex\capsa-consulting.openai.yaml")
Copy-Item (Join-Path $RepoPath "templates\capsa-consulting.md") (Join-Path $SkillsPath "capsa-consulting\templates.md") -Force

Install-Skill "writing-thought-leadership" (Join-Path $RepoPath "overlays\writing-thought-leadership") (Join-Path $RepoPath "adapters\codex\writing-thought-leadership.openai.yaml")
Install-Skill "systems-builder" (Join-Path $RepoPath "overlays\systems-builder") (Join-Path $RepoPath "adapters\codex\systems-builder.openai.yaml")

Write-Output "Installed Logos skills to $SkillsPath"
