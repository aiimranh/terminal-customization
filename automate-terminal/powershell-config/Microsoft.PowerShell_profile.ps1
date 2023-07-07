oh-my-posh init pwsh --config "C:\Users\$Env:UserName\Documents\WindowsPowerShell\themes\powerlevel10k_rainbow.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons

Set-PSReadLineOption -PredictionSource History
