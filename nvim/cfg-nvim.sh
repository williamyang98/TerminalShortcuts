# install into Vundle dir
git clone https://github.com/VundleVim/Vundle.vim.git $USERPROFILE/.vim/bundle/Vundle.vim
git clone https://github.com/easymotion/vim-easymotion.git $USERPROFILE/.vim/bundle/vim-easymotion
git clone https://github.com/asvetliakov/vim-easymotion.git $USERPROFILE/.vim/bundle/vs-vim-easymotion

# Install vim plug
# Install plug.vim into ~/AppData/Local/nvim-data/site/autoload/
curl -fLo $LOCALAPPDATA/nvim-data/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tpope/vim-surround.git $LOCALAPPDATA/nvim/plugged/vim-surround
git clone https://github.com/itchyny/lightline.vim.git $LOCALAPPDATA/nvim/plugged/lightline.vim

cp init.vim $LOCALAPPDATA/nvim/init.vim
