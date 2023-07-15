git clone --depth 1 https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA/nvim-data/site/pack/packer/start/packer.nvim"

New-Item -Path "$env:LOCALAPPDATA/nvim" -ItemType Junction -Value "./config-files"
