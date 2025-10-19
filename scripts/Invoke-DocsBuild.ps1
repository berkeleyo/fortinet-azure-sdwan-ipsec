<#
.SYNOPSIS
Builds the MkDocs site locally (no activation required if you pass -PythonPath).
#>
param(
  [string]$PythonPath = ".\.venv\Scripts\python.exe"
)
$ErrorActionPreference = "Stop"
if (-not (Test-Path $PythonPath)) {
  Write-Error "Python not found at $PythonPath. Either activate venv or pass -PythonPath."
}
& $PythonPath -m pip install --upgrade pip
& $PythonPath -m pip install mkdocs-material pymdown-extensions mkdocs-glightbox mkdocs-git-revision-date-localized-plugin
.\.venv\Scripts\mkdocs.exe build --strict
Write-Host "Site built to .\site" -ForegroundColor Green
