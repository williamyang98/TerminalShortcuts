" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" vim-plug
call plug#begin('~/AppData/Local/nvim/plugged')
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
if !exists('g:vscode')
    Plug 'itchyny/lightline.vim'
endif
Plug 'vim-surround/vim-surround'
call plug#end()


" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
if !exists('g:vscode')
    Plugin 'easymotion/vim-easymotion'
else
    Plugin 'file://~/.vim/bundle/vs-vim-easymotion'
endif
call vundle#end()
filetype plugin indent on

" Set compatibility to Vim only.
set nocompatible

" Turn on syntax highlighting.
syntax on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast
" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
" set list
" set listchars=tab:>\ ,trail:*,extends:#,nbsp:.

" Show line numbers
if !exists('g:vscode')
    set number relativenumber
endif

" Set status line display
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

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

" Map the <Space> key to toggle a selected fold opened/closed.
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
" vnoremap <Space> zf

" plugins

let g:EasyMotion_smartcase = 1
" nmap f <Plug>(easymotion-overwin-f2)
" map <Space>f <Plug>(easymotion-bd-f)
" map <Space>l <Plug>(easymotion-bd-jk)
map <Space> <Plug>(easymotion-bd-w)
" nmap <Space> <Plug>(easymotion-overwin-line)
