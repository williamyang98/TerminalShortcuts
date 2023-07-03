" ### vim-plug config ###
" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
call plug#begin('~/.config/nvim/plugged')
if !exists('g:vscode')
    " Status line 
    Plug 'itchyny/lightline.vim'
    " Autocomplete
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " ### CoC extensions
    " 1. Install node.js 
    " 2. Run :CocUpdate
    " 3. Run :CocInstall coc-clangd coc-cmake [other coc extensions]
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
" (Optional) Code highlighting
" Plug 'bfrg/vim-cpp-modern'
call plug#end()
filetype plugin indent on


" ### Easy motion config ###
let g:EasyMotion_smartcase = 1
" nmap f <Plug>(easymotion-overwin-f2)
" map <Space>f <Plug>(easymotion-bd-f)
" map <Space>l <Plug>(easymotion-bd-jk)
map <Space> <Plug>(easymotion-bd-w)
" nmap <Space> <Plug>(easymotion-overwin-line)


" ### Nerdtree shortcuts ###
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-m> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" ### Native vim options ###
" Create tab
nnoremap <C-t> :tabnew<CR>
" Navigate panes
" map <C-h> <C-w>h
" map <C-l> <C-w>l

" ### Terminal settings ###
" Exit terminal edit mode
" :tnoremap <Esc> <C-\><C-n>
set shell=cmd
if has('nvim')
augroup custom_term
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber bufhidden=hide
augroup END
endif


" ### Native vim options ###
set nocompatible        " Set compatibility to Vim only.
syntax on
set modelines=0
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
" Setup tabs/spaces correctly
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
set list
set listchars=tab:»\›,extends:›,precedes:‹,nbsp:·,trail:·
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

