param(
  [Parameter(Mandatory = $true)]
  [string]$OpenClawSkillsPath,
  [string]$RepoPath = (Resolve-Path (Join-Path $PSScriptRoot "..\..")).Path
)

$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Force -Path $OpenClawSkillsPath | Out-Null

function Install-OpenClawSkill {
  param(
    [string]$Name,
    [string]$SourcePath
  )

  $target = Join-Path $OpenClawSkillsPath $Name
  New-Item -ItemType Directory -Force -Path $target | Out-Null
  Copy-Item (Join-Path $SourcePath "SKILL.md") (Join-Path $target "SKILL.md") -Force

  if (Test-Path (Join-Path $SourcePath "examples.md")) {
    Copy-Item (Join-Path $SourcePath "examples.md") (Join-Path $target "examples.md") -Force
  }
}

Install-OpenClawSkill "logos-core" (Join-Path $RepoPath "core")
Install-OpenClawSkill "capsa-consulting" (Join-Path $RepoPath "overlays\capsa-consulting")
Install-OpenClawSkill "writing-thought-leadership" (Join-Path $RepoPath "overlays\writing-thought-leadership")
Install-OpenClawSkill "systems-builder" (Join-Path $RepoPath "overlays\systems-builder")

Write-Output "Installed Logos skills to $OpenClawSkillsPath"
