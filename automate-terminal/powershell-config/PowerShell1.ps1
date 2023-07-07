# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# oh-my-posh installation
winget install JanDeDobbeleer.OhMyPosh -s winget

# Making Profile for Posh
$PROFILE

# Set-Execution Policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

#Terminal Icons Module
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

# PowerShellGet Module
Install-Module -Name PowerShellGet -Force

#Following Scripts
$scriptPath = ".\PowerShell2.ps1"

Start-Process powershell.exe -ArgumentList "-NoExit", "-Command", "$scriptPath" -Verb RunAs
Exit
