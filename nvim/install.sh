#!/bin/sh
set -x
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir -p ~/.config/nvim/
cd ./config-files/
cp -R . ~/.config/nvim/

