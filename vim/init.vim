" ### vim-plug config ###
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
call plug#begin()
    if !exists('g:vscode')
        " Status line 
        Plug 'itchyny/lightline.vim'
        " Vscode has line numbers included
        set number relativenumber
    endif
    " File navigation
    Plug 'scrooloose/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'       " Fuzzy finder
    " Code navigation
    Plug 'easymotion/vim-easymotion'
    " Code editing
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()
filetype plugin indent on

" ## vim settings
set nocompatible        " Set compatibility to Vim only.
syntax on
set modelines=0
set wrap
" tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" visual
set scrolloff=5
set ttyfast
set showmode
set showcmd
set laststatus=2
" show whitespace characters
set list
set listchars=tab:»\›,extends:›,precedes:‹,nbsp:·,trail:·
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
set encoding=utf-8
" bracket switching
set matchpairs+=<:>
" Fixes common backspace problems
set backspace=indent,eol,start
" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase
" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100
" code folding
set foldmethod=manual
" vim terminal
set shell=bash
if has('nvim')
    augroup custom_term
        autocmd!
        autocmd TermOpen * setlocal nonumber norelativenumber
    augroup END
endif


" ## remappings
let mapleader = " "
" easymotion
let g:EasyMotion_smartcase = 1
map \\\\\\ <Plug>(easymotion-prefix)
map <leader><leader> <Plug>(easymotion-bd-w)
" recenter cursor after search
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
" vim paste
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
" nerdtree
nnoremap <leader>mo :NERDTreeFocus<CR>
nnoremap <leader>mc :NERDTreeClose<CR>
nnoremap <leader>mt :NERDTreeToggle<CR>
" vim tab
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader>tl :tabm +1<CR>
nnoremap <leader>th :tabm -1<CR>
" vim buffers
nnoremap <leader>b :b#<CR> 
