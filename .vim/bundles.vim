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
    Bundle 'tpope/vim-endwise'
    Bundle 'tsaleh/vim-matchit'
    Bundle 'godlygeek/tabular'
    Bundle 'tpope/vim-surround'

  " languages/frameworks
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'tpope/vim-rails'
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'tpope/vim-markdown'
    " Bundle 'nelstrom/vim-markdown-folding'
    Bundle 'pangloss/vim-javascript'
    Bundle 'hail2u/vim-css3-syntax'
    Bundle 'groenewege/vim-less'
    Bundle 'nono/vim-handlebars'
    Bundle 'briancollins/vim-jst'
    Bundle 'elzr/vim-json'
    Bundle 'othree/html5.vim'

  " utilities
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-fugitive'
    " following are for Dash.app integration
    " Bundle 'rizzatti/funcoo.vim'
    " Bundle 'rizzatti/dash.vim'

  " finder
    Bundle 'ack.vim'
    Bundle 'rking/ag.vim'
    Bundle 'kien/ctrlp.vim'
    " Bundle 'wincent/Command-T'
    Bundle 'L9'
    " Bundle 'FuzzyFinder'

  " colors
    Bundle 'altercation/vim-colors-solarized'

  filetype plugin indent on

augroup END
