# PSReadLine Module
Install-Module PSReadLine -AllowPrerelease -Force

# Copying Files
# New-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\" -ItemType Directory
Copy-Item -Path "$pwd\themes\*" -Destination "C:\Users\$Env:UserName\Documents\WindowsPowerShell\themes\" -Recurse
Copy-Item -Path "$pwd\Microsoft.PowerShell_profile.ps1" -Destination "C:\Users\$Env:UserName\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

# font installing
$scriptPath = ".\fonts\fonts.ps1"

Start-Process powershell.exe -ArgumentList "-NoExit", "-Command", "$scriptPath" -Verb RunAs
