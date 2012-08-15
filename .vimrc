set encoding=utf-8
filetype plugin indent on

set nocompatible 
set number
set ruler
set cmdheight=2
set laststatus=2
set title
set showcmd
set linespace=0

syntax on 

call pathogen#runtime_append_all_bundles()
colorscheme xoria256

set ignorecase
set smartcase
set wrapscan
set hlsearch
set autoindent
set showmatch
set backspace=indent,eol,start

set tabstop=8
set shiftwidth=2
set expandtab

set list
"set listchars="tab:─,eol:eol⏎"
set listchars=tab:▸\ ,eol:¬

set backup
set backupdir=~/vim_backup
set swapfile
set directory=~/vim_swap

"set autowrite

set textwidth=80
if exists('&colorcolumn')
  set colorcolumn=+1
endif


filetype on


