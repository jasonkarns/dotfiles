augroup bundles
  autocmd!

  filetype on                    " OS X hack. must be on before it can be turned off
  filetype off                   " required for vundle

  set rtp+=~/.vim/bundle/vundle/ " add vundle to runtime path
  call vundle#rc()               " invoke vundle

  " let Vundle manage vundle
    Bundle 'gmarik/vundle'

  " syntax utilities
    Bundle 'tpope/vim-commentary'
    Bundle 'tsaleh/vim-matchit'
    Bundle 'godlygeek/tabular'

  " languages/frameworks
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'tpope/vim-rails.git'
    Bundle 'kchmck/vim-coffee-script'
    " Bundle vim-markdown? (plasticboy, tpope or builtin?)

  " utilities
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-fugitive'

  " finder
    Bundle 'ack.vim'
    Bundle 'kien/ctrlp.vim'
    "Bundle 'wincent/Command-T'
    "Bundle 'FuzzyFinder'

  " colors
    Bundle 'altercation/vim-colors-solarized'

  filetype plugin indent on

augroup END
