set nocompatible               " be iMproved
filetype on                    " OS X hack. must be on before it can be turned off
filetype off                   " required for vundle

set rtp+=~/.vim/bundle/vundle/ " add vundle to runtime path
call vundle#rc()               " invoke vundle

" vundle must manage vundle
Bundle 'gmarik/vundle'

""
"" Bundles
""
""Bundle 'tpope/vim-fugitive'
""Bundle 'tpope/vim-rails.git'
""Bundle 'tpope/vim-commentary'
""Bundle 'tpope/vim-eunuch'
""Bundle 'wincent/Command-T'
""Bundle 'altercation/vim-colors-solarized'
""Bundle 'tsaleh/vim-matchit'
""Bundle 'vim-ruby/vim-ruby'
""Bundle 'kchmck/vim-coffee-script'
""Bundle 'mileszs/ack.vim'
""Bundle 'kien/ctrlp.vim'
""Bundle vim-markdown? (plasticboy, tpope or builtin?)
""Bundle 'FuzzyFinder'


""
"" settings
""
set number
set autoindent
set showmatch
set hlsearch
set cursorline
set cmdheight=2
set switchbuf=useopen
set showtabline=2
set showcmd

syntax on
filetype plugin indent on

"" TODO configure backup files location?

"" command line tab completion
set wildmenu
set wildmode=longest,list
"" TODO configure tab completion ignore file patterns?

"" whitespace handling
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set shiftround
"" TODO visualize tabs
"" TODO visualize trailing space

"" case handling
set ignorecase
set smartcase
set incsearch



let mapleader=","

"" Tab actions
nmap <leader>j :tabn<CR>
nmap <leader>k :tabp<CR>


"" Middle Click
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>

