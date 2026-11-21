$ErrorActionPreference = 'Stop'
$taskManifest = Import-Csv -LiteralPath (Join-Path $PSScriptRoot 'SOURCE_SHA256_MANIFEST.csv')
$taskFailed = $false
foreach ($taskItem in $taskManifest) {
    $taskPath = Join-Path $PSScriptRoot $taskItem.file
    if (-not (Test-Path -LiteralPath $taskPath)) { Write-Output ('MISSING ' + $taskItem.file); $taskFailed = $true; continue }
    $taskActual = (Get-FileHash -LiteralPath $taskPath -Algorithm SHA256).Hash
    $taskLength = (Get-Item -LiteralPath $taskPath).Length
    $taskMatch = $taskActual -eq $taskItem.sha256 -and $taskLength -eq [long]$taskItem.bytes
    Write-Output ([pscustomobject]@{ Evidence=$taskItem.evidence_id; Match=$taskMatch; Bytes=$taskLength; SHA256=$taskActual })
    if (-not $taskMatch) { $taskFailed = $true }
}
if ($taskFailed) { throw 'One or more evidence files failed verification.' }
