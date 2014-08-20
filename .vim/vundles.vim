augroup bundles
  autocmd!

  filetype on                    " OS X hack. must be on before it can be turned off
  filetype off                   " required for vundle

  set rtp+=~/.vim/bundle/vundle/ " add vundle to runtime path
  call vundle#begin()            " invoke vundle

  " let Vundle manage vundle
    Bundle 'gmarik/vundle'

  " syntax utilities
    Bundle 'tpope/vim-commentary'
    Bundle 'tpope/vim-endwise'
    Bundle 'matchit.zip'
    Bundle 'godlygeek/tabular'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-characterize'
    Bundle 'tpope/vim-sleuth'
    Bundle 'tpope/vim-ragtag'
    Bundle 'tpope/vim-speeddating'
    " Bundle 'mattn/emmet-vim'

  " languages/frameworks
    Bundle 'scrooloose/syntastic'
    Bundle 'vim-ruby/vim-ruby'
    " Bundle 'tpope/vim-rails'
    " Bundle 'tpope/vim-bundler'
    " Bundle 'tpope/vim-rbenv'
    " Bundle 'tpope/vim-rake'
    " Bundle 'tpope/vim-cucumber'
    Bundle 'othree/html5.vim'
    Bundle 'closetag.vim'
    Bundle 'hail2u/vim-css3-syntax'
    Bundle 'pangloss/vim-javascript'
    Bundle 'kchmck/vim-coffee-script'
    Bundle 'groenewege/vim-less'
    Bundle 'nono/vim-handlebars'
    Bundle 'briancollins/vim-jst'
    Bundle 'elzr/vim-json'
    Bundle 'tpope/vim-jdaddy'
    Bundle 'tpope/vim-markdown'
    " Bundle 'nelstrom/vim-markdown-folding'

  " utilities
    Bundle 'tpope/vim-eunuch'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-obsession'
    " Bundle 'tpope/vim-tbone'
    " Bundle 'tpope/vim-rsi'
  " following are for Dash.app integration
    " Bundle 'rizzatti/funcoo.vim'
    " Bundle 'rizzatti/dash.vim'
    Bundle 'tpope/vim-projectile'
    Bundle 'editorconfig/editorconfig-vim'
    " Bundle 'ap/vim-css-color'

  " finder
    " Bundle 'ack.vim'
    Bundle 'rking/ag.vim'
    Bundle 'kien/ctrlp.vim'
    " Bundle 'wincent/Command-T'
    " Bundle 'L9'
    " Bundle 'FuzzyFinder'
    Bundle 'scrooloose/nerdtree'

  " colors
    Bundle 'altercation/vim-colors-solarized'

  call vundle#end()
  filetype plugin indent on

augroup END
