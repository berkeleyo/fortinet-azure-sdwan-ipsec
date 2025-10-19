<#
.SYNOPSIS
Runs PSScriptAnalyzer over .\scripts.
#>
param(
  [switch]$FailOnInformation = $false
)
$ErrorActionPreference = "Stop"
try {
  if (-not (Get-Module -ListAvailable -Name PSScriptAnalyzer)) {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted | Out-Null
    Install-Module PSScriptAnalyzer -Scope CurrentUser -Force -SkipPublisherCheck
  }
  $sev = @("Warning","Error")
  if ($FailOnInformation) { $sev = @("Information","Warning","Error") }
  Invoke-ScriptAnalyzer -Path ".\scripts" -Recurse -Severity $sev
  Write-Host "PSScriptAnalyzer completed." -ForegroundColor Green
} catch {
  Write-Error $_
  exit 1
}
