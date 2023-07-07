# PSReadLine Module
Install-Module PSReadLine -AllowPrerelease -Force

# Copying Files
# New-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\" -ItemType Directory
Copy-Item -Path "$pwd\*" -Destination "C:\Users\$Env:UserName\Documents\WindowsPowerShell" -Recurse
Remove-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\Instruction.txt"
Remove-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\PowerShell1.ps1"
Remove-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\PowerShell2.ps1"

# font installing
$scriptPath = ".\fonts\fonts.ps1"

Start-Process powershell.exe -ArgumentList "-NoExit", "-Command", "$scriptPath" -Verb RunAs
Exit
