param (
    [Parameter(Mandatory=$true)]
    [string]$installCFGJsonFilePath
)

# Read the installCFG.json file
$jsonContent = Get-Content -Path $installCFGJsonFilePath -Raw
$jsonObject = ConvertFrom-Json -InputObject $jsonContent

# Obtain the value for the key "SupportedOS"
$supportedOs = $jsonObject.SupportedOS | ForEach-Object { $_ }

# Check if SupportedOS is empty or missing
if (-not $supportedOs -or $supportedOs.Count -eq 0) {
    $supportedOs = @("Windows 10", "Windows Server 22")
    Write-Output $supportedOs
    Write-Output "No supported OS information found in the installCFG.json file. Using default supported OS: $($supportedOs -join ', ')"
} else {
    # Output the value
    Write-Output $supportedOs
}