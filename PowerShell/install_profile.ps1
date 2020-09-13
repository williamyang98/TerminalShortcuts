# Install profile and theme
$profile_path = Split-Path $profile

Copy-Item -Path "./profile/Microsoft.PowerShell_profile.ps1" -Destination $profile
Copy-Item -Path "./profile/PoshThemes/" -Destination $profile_path/PoshThemes -Recurse

# install modules
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force 
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

