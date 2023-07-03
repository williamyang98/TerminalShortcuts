#!/bin/sh
if [[ "$OSTYPE" == "win32" ]] ||
   [[ "$OSTYPE" == "msys" ]]
then
    NVIM_DATA_PATH="$LOCALAPPDATA/nvim-data"
else
    NVIM_DATA_PATH="${XDG_DATA_HOME:-$HOME/.local/share}/nvim"
fi

NVIM_PLUG_PATH="site/autoload/plug.vim"
NVIM_PLUG_GITHUB="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

# Install vim plug
curl -fLo "${NVIM_DATA_PATH}/${NVIM_PLUG_PATH}" --create-dirs ${NVIM_PLUG_GITHUB}

# Copy our init.vim (.vimrc for normal vim, init.vim for neovim)
if [[ "$OSTYPE" == "win32" ]] ||
   [[ "$OSTYPE" == "msys" ]]
then
    mkdir -p $LOCALAPPDATA/nvim
    cp init.vim $LOCALAPPDATA/nvim/init.vim
else
    mkdir -p ~/.config/nvim/
    # ln -sf init.vim ~/.config/nvim/init.vim
    # ln -sf init.vim ~/.vimrc
    cp init.vim ~/.config/nvim/init.vim
    cp init.vim ~/.vimrc
fi

# Install plugins by running :PlugInstall
# Check plugins status by running :PlugStatus
