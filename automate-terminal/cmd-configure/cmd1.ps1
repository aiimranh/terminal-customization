# Ask for elevated permissions if required
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# Required Steps
Write-Host "Configuring Command Prompt"
Start-Process -FilePath "cmd.exe" -ArgumentList "/c 'C:\Program` Files` (x86)\clink\clink.bat'"
Start-Process -FilePath "cmd.exe" -ArgumentList "/c .\cmd2.bat"

# Copying File
Write-Host "Copying Files"
New-Item "C:\Program Files (x86)\clink\themes" -ItemType Directory
Copy-Item -Path "$pwd\powerlevel10k_rainbow.omp.json" -Destination "C:\Program Files (x86)\clink\themes\powerlevel10k_rainbow.omp.json"
Copy-Item -Path "$pwd\oh-my-posh.lua" -Destination "C:\Program Files (x86)\clink\"
Write-Host "Process Done"
