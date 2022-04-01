# Install vim plug
# Install plug.vim into ~/AppData/Local/nvim-data/site/autoload/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Copy our init.vim (.vimrc for normal vim, init.vim for neovim)
cp init.vim ~/.config/nvim/init.vim

# Install plugins by running :PlugInstall
# Check plugins status by running :PlugStatus
