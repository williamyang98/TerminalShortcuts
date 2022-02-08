# Install vim plug
# Install plug.vim into ~/AppData/Local/nvim-data/site/autoload/
curl -fLo $LOCALAPPDATA/nvim-data/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy our init.vim (.vimrc for normal vim, init.vim for neovim)
cp init.vim $LOCALAPPDATA/nvim/init.vim

# Install plugins by running :PlugInstall
# Check plugins status by running :PlugStatus
