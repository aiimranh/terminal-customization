# PSReadLine Module
Write-Host "Installing PSReadLine Module"
Install-Module PSReadLine -AllowPrerelease -Force

# Copying Files
Write-Host "Copying Files"
$tPath = "C:\Users\$Env:UserName\Documents\WindowsPowerShell\themes"
if(!(Test-Path $tPath)){
New-Item $tPath -ItemType Directory
}
Copy-Item -Path "$pwd\themes\*" -Destination "C:\Users\$Env:UserName\Documents\WindowsPowerShell\themes\" -Recurse
Copy-Item -Path "$pwd\Microsoft.PowerShell_profile.ps1" -Destination "C:\Users\$Env:UserName\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

# font installing
Write-Host "Installing nerd Fonts"
$scriptPath = ".\fonts\fonts.ps1"

Start-Process powershell.exe -ArgumentList "-NoExit", "-Command", "$scriptPath" -Verb RunAs
