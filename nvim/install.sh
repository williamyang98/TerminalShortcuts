#!/bin/sh
set -x
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cp -R ./config-files ~/.config/nvim/
