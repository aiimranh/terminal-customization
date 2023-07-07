# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# oh-my-posh installation
Write-Host "Downloading oh-my-posh"
winget install JanDeDobbeleer.OhMyPosh -s winget

# Making Profile for Posh
Write-Host "PowerShell Profile"
$PROFILE

# Set-Execution Policy
Write-Host "Bypass Execution Policy"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

#Terminal Icons Module
Write-Host "Installing Terminal Icons Module"
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

# PowerShellGet Module
Write-Host "Installing PowerShellGet Module"
Install-Module -Name PowerShellGet -Force

#Following Scripts
$scriptPath = ".\PowerShell2.ps1"

Write-Host "Restarting & Continuing"
Start-Process powershell.exe -ArgumentList "-NoExit", "-Command", "$scriptPath" -Verb RunAs
