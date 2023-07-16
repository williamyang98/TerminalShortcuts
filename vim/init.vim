" set compatibility to Vim only.
set nocompatible

" ## vim-plug config
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
call plug#begin()
    " code editing
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'mg979/vim-visual-multi', { 'branch': 'master' }
    " undo history
    Plug 'mbbill/undotree'
    " status line
    Plug 'itchyny/lightline.vim'
    " navigation
    Plug 'scrooloose/nerdtree'
    Plug 'easymotion/vim-easymotion'
    " fuzzy search
    Plug 'ctrlpvim/ctrlp.vim'
    " session management
    Plug 'tpope/vim-obsession'
call plug#end()
filetype plugin indent on


" ## vim settings
" display settings
syntax on
set encoding=utf-8
set scrolloff=5
set number 
set relativenumber
set showcmd
set showmode
set laststatus=2        " always show status line
set wrap
set ttyfast
" mouse controls
set mouse=a
" disable mode lines
set nomodeline
set modelines=0
" stop adding eol on dos
set nofixendofline
" Fixes common backspace problems
set backspace=indent,eol,start
" pair matching
set matchpairs+=<:>
" show whitespace characters
set list
set listchars=tab:»\›,extends:›,precedes:‹,nbsp:·,trail:·
" tab size
set tabstop=4 
set softtabstop=4 
set expandtab 
set shiftwidth=4 
set smarttab
" search
set incsearch
set hlsearch
set ignorecase
set smartcase
" change backup method
set noswapfile
set nobackup
set undofile
set undodir=$HOME/.vim/undodir
" terminal settings
autocmd TerminalOpen * setlocal nonumber norelativenumber
" set buffer size
set viminfo='100,<9999,s100
" code folding
set foldmethod=manual


" ## remap
let mapleader = " "
" recenter cursor vertically after scroll and search
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv
" single line relocation
nnoremap <C-j> :m.+1<CR>==
nnoremap <C-k> :m.-2<CR>==
" visual model relocation
vnoremap <C-j> :m'>+1<CR>gv=gv
vnoremap <C-k> :m'<-2<CR>gv=gv
" vim tab
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader>tl :tabm +1<CR>
nnoremap <leader>th :tabm -1<CR>
" vim buffers
nnoremap <leader>b :b#<CR> 
" vim paste
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>


" ## plugin configuration
" easymotion
let g:EasyMotion_smartcase = 1
map \\\\\\ <Plug>(easymotion-prefix)
nnoremap <leader><leader> <Plug>(easymotion-bd-w)
" nerdtree
nnoremap <leader>mo :NERDTreeFocus<CR>
nnoremap <leader>mc :NERDTreeClose<CR>
nnoremap <leader>mt :NERDTreeToggle<CR>
" vim-commentary
autocmd FileType c,cpp setlocal commentstring=//\ %s
" ctrl-p
let g:ctrlp_map = "\\\\\\\\\\"
nnoremap <leader>p :CtrlP<CR> 
nnoremap <leader>fp :CtrlP<CR> 
nnoremap <leader>fb :CtrlPBuffer<CR> 
nnoremap <leader>fw :CtrlPMixed<CR> 
" undotree
nnoremap <leader>uo :UndotreeShow<CR>
nnoremap <leader>uc :UndotreeHide<CR>
nnoremap <leader>ut :UndotreeToggle<CR>
