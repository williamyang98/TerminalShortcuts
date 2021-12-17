$global:DefaultUser = [System.Environment]::UserName
$profile_path = Split-Path $profile
#Import-Module PSColor
Import-Module posh-git
Import-Module oh-my-posh

oh-my-posh --init --shell pwsh --config $profile_path/custom_themes/custom_theme.omp.json | Invoke-Expression

#Set-Theme Material
#Set-Theme CustomParadox
#Set-Theme Paradox
