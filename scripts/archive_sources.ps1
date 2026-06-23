# Archive Source URLs in Wayback Machine
# The Anatomy of Startup Death
#
# This script submits all source URLs from the MVP dataset to
# the Internet Archive Wayback Machine for preservation.
#
# Usage:
#   pwsh -File archive_sources.ps1
#
# Requirements:
#   Internet connection
#   PowerShell 5.1+

$csvPath = Join-Path $PSScriptRoot "..\data\startup_failures_mvp.csv"
$logPath = Join-Path $PSScriptRoot "..\data\archive_log.csv"

if (-not (Test-Path $csvPath)) {
    Write-Error "Dataset not found at $csvPath"
    exit 1
}

$csv = Import-Csv -LiteralPath $csvPath
$urls = $csv | Where-Object { $_.source_url -and $_.source_url -ne 'unknown' } | ForEach-Object { $_.source_url }
$allUrls = @($urls)
$processed = 0
$success = 0
$failed = 0
$results = @()

Write-Host "Archiving $($allUrls.Count) source URLs to Wayback Machine..."
Write-Host ""

foreach ($url in $allUrls) {
    $processed++
    $percent = [math]::Round(($processed / $allUrls.Count) * 100)
    Write-Progress -Activity "Archiving URLs" -Status "$processed / $($allUrls.Count) ($percent%)" -PercentComplete $percent

    try {
        $response = Invoke-WebRequest -Uri "https://web.archive.org/save/$url" -Method Get -TimeoutSec 120 -UseBasicParsing -ErrorAction Stop
        $results += [PSCustomObject]@{
            url = $url
            status = "OK"
            code = $response.StatusCode
            timestamp = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
        }
        $success++
        Write-Host "[OK] $url"
    }
    catch {
        $statusCode = if ($_.Exception.Response) { $_.Exception.Response.StatusCode.value__ } else { "timeout/error" }
        $results += [PSCustomObject]@{
            url = $url
            status = "FAIL"
            code = $statusCode
            timestamp = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
        }
        $failed++
        Write-Host "[FAIL] $url - $($_.Exception.Message)"
    }

    # Rate limit: 1 request per 3 seconds to be respectful to archive.org
    Start-Sleep -Seconds 3
}

$results | Export-Csv -LiteralPath $logPath -NoTypeInformation -Encoding UTF8

Write-Host ""
Write-Host "=== Archive Complete ==="
Write-Host "Total: $($allUrls.Count)"
Write-Host "Success: $success"
Write-Host "Failed: $failed"
Write-Host "Log saved to: $logPath"

if ($failed -gt 0) {
    Write-Host ""
    Write-Host "Failed URLs:"
    $results | Where-Object { $_.status -eq "FAIL" } | ForEach-Object { Write-Host "  $($_.url)" }
}
