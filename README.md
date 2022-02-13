# Introduction
Basic setup for Windows development environment

## Fonts
1. Navigate to TerminalShortcuts/fonts folder
2. Install one of the custom NERD fonts which support custom unicode characters for the terminal (or download one from [nerdfonts](https://www.nerdfonts.com/font-downloads))
3. Setup terminal of choice to use this custom font

## Bash
1. Install git (which includes bash for git)
2. Copy the .bashrc file to ~/.bashrc
3. To forcefully apply .bashrc to bash, run <code>source ~/.bashrc</code>

## NVim
1. Download neovim from [Neovim Github Releases](https://github.com/neovim/neovim/releases)
2. Copy neovim folder into directory of choice and setup environment variables to include Neovim/bin folder
3. Navigate to TerminalShortcuts/nvim folder
4. Run <code>./cfg-nvim.sh</code>

If there are issues with plugin loading, check if environment variable for $userprofile is set correctly. 

5. Run <code>:echo $userprofile</code> inside nvim and check against value for ~/.

## Powershell
1. Navigate to TerminalShortcuts/PowerShell folder
2. Open powershell and run <code>./install_profile.ps1</code>
3. Restart powershell with <code>. $profile</code>

## Clink (enhances cmd.exe)
1. Run installation steps for "TerminalShortcuts/PowerShell" which installs oh-my-posh and the custom theme 
2. Download and install clink.x_setup.exe from [Clink Releases](https://github.com/chrisant996/clink/releases)
3. Open cmd.exe and run <code>clink info</code> and find the folder for scripts
4. Copy oh-my-posh.lua into that scripts folder
5. If there are issues with the path, change path variables inside lua script to point to oh-my-posh.exe install and configuration file

## Scripts 
Batch files for setting up dev environment
- fx.bat: C++, vcpkg, cmake, msbuild
