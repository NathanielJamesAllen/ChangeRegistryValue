
$registryPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\BITS"
$registryName = "EnableBITSMaxBandwidth"

if (Test-Path "Registry::$registryPath") {
    Set-ItemProperty -Path "Registry::$registryPath" -Name $registryName -Value 0
    Write-Host "Registry value changed to zero."
} else {
    Write-Host "Registry path is not valid."
}
