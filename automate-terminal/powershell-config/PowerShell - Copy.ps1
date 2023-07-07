# Check if running as administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Prompt user to run the script with admin rights
    $adminPrompt = "Please run this script with administrative privileges."
    $adminPrompt += "`nRight-click on the PowerShell icon and select 'Run as administrator'."
    $adminPrompt += "`nOnce the PowerShell session is open, run the script again."
    Write-Warning $adminPrompt
    Pause
    Exit
}

# Code before restart (admin rights required)
Write-Host "This code executes before restarting PowerShell (admin rights required)."
# ... (add your code before restart here)

# Restart PowerShell as administrator
Start-Process powershell.exe -Verb RunAs -ArgumentList "-NoExit","-Command ""& { $script = '$($MyInvocation.MyCommand.Path)'; Start-Process powershell.exe -ArgumentList '-NoExit','-Command',' & ''$script'' ' -Verb RunAs }"""

# Code after restart (admin rights required)
Write-Host "This code executes after restarting PowerShell (admin rights required)."
# ... (add your code after restart here)
