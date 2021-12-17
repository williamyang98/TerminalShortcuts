# Install profile and theme
$profile_path = Split-Path $profile

Copy-Item -Path "./files/Microsoft.PowerShell_profile.ps1" -Destination $profile
Copy-Item -Path "./files/custom_themes/" -Destination $profile_path/custom_themes -Recurse

# install modules
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser 

