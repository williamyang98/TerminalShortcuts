#!/bin/sh
NVIM_PLUG_PATH="~/.vim/autoload/plug.vim"
NVIM_PLUG_GITHUB="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
curl -fLo ${NVIM_PLUG_PATH} --create-dirs ${NVIM_PLUG_GITHUB}
cp init.vim ~/.vimrc

# Install plugins by running :PlugInstall
# Check plugins status by running :PlugStatus
