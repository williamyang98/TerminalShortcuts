#!/bin/sh
set -x
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./init.vim ~/.vimrc
cp ./root/. ~/.vim/ -rf
