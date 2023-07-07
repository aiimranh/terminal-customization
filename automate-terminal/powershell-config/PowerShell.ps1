# oh-my-posh installation
winget install JanDeDobbeleer.OhMyPosh -s winget

# Making Profile for Posh
$PROFILE

# Set-Execution Policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

#Terminal Icons Installation
Install-Module -Name Terminal-Icons -Repository PSGallery

# Copying Files
New-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\" -ItemType Directory
Copy-Item -Path "$pwd\*" -Destination "C:\Users\$Env:UserName\Documents\WindowsPowerShell" -Recurse
Remove-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\Instruction.txt"
Remove-Item "C:\Users\$Env:UserName\Documents\WindowsPowerShell\PowerShell.ps1"



