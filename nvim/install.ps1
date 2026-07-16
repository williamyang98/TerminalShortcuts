New-Item -Path "$env:LOCALAPPDATA/nvim" -ItemType Junction -Value (Convert-Path "./config-files")
