set encoding=utf-8

set nocompatible 
set number
set ruler
set cmdheight=2
set laststatus=2
set title
set showcmd
set linespace=0

syntax on 

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set helpfile=$VIMRUNTIME/doc/help.txt
filetype plugin indent on

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

" syntastic
let g:syntastic_mode_map = { 'mode': 'active', 
  \ 'active_filetypes': [], 
  \ 'passive_filetypes': ['html', 'javascript']}
let g:syntastic_auto_loc_list = 1
" gjslint. install closure-linter on Arch Linux. 
let g:syntastic_javascript_checker = 'gjslint'

" neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern =
" let g:neocomplcache_dictionary_filetype_lists =
" let g:neocomplcache_keyword_patterns
let g:neocomplcache_clang_use_library = 1
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> neocomplcache#smart_close_popup()
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

