#Set folder paths and grab font files from the repo
Write-Host "Installing Nerd Font"
$source = $PSScriptRoot
$fontFolder = 'C:\Windows\Fonts'
$fonts = Get-ChildItem -Path $source -Include '*.ttf', '*.otf' -Recurse


# Process each font contained in the source directory
foreach ($font in $fonts) {


    $targetFontPath = Join-Path $fontFolder $font.Name


    # If the font does not exist in the target folder, copy the font
    if (!(Test-Path $targetFontPath)) {
 
    $sourceFont = Join-Path $Source $font.Name


    Copy-Item $sourceFont -Destination $targetFontPath -Force
   
    # Change the registry based on the font type
    switch ($font.extension) {
        '.otf' { 
            New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name "$($font.Name -replace ".{4}$") (OpenType)" -Type String -Value $font.name -Force


        }
        '.ttf' {
            New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts' -Name "$($font.Name -replace ".{4}$") (TrueType)" -Type String -Value $font.name -Force
            }
        }
    }
}
Write-Host "Process Done"