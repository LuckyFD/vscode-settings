function ExecuteAndMeasureInitTime {
    param(
        [string]$ScriptToExecute
    )
    $startTime = Get-Date
    Invoke-Expression $ScriptToExecute
    $endTime = Get-Date
    $duration = $endTime - $startTime
    Write-Output "$ScriptToExecute took $($duration.TotalMilliseconds) ms to import."
}
# Start timing
$profileLoadStartTime = Get-Date


ExecuteAndMeasureInitTime 'Import-Module posh-git'
ExecuteAndMeasureInitTime 'Import-Module PSReadLine'
ExecuteAndMeasureInitTime 'Invoke-Expression ((zoxide init powershell) | Out-String)'
ExecuteAndMeasureInitTime 'Import-Module PSFzf'
# ExecuteAndMeasureInitTime 'Import-Module PowerShellGet'


# End timing and output duration
$profileLoadEndTime = Get-Date
$profileLoadDuration = $profileLoadEndTime - $profileLoadStartTime
Write-Host "Loading the profile took $($profileLoadDuration.TotalSeconds) seconds"
