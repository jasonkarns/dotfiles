augroup bundles
  autocmd!

  filetype on                    " OS X hack. must be on before it can be turned off
  filetype off                   " required for vundle

  set rtp+=$XDG_CONFIG_HOME/vim/vundle.vim        " add vundle to runtime path
  call vundle#begin("$XDG_DATA_HOME/vim/bundle")  " invoke vundle

  " let Vundle manage vundle
    Plugin 'gmarik/vundle.vim'

  " syntax utilities
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-git'
    Plugin 'matchit.zip'
    Plugin 'godlygeek/tabular'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-characterize'
    " Plugin 'tpope/vim-sleuth'
    Plugin 'tpope/vim-ragtag'
    Plugin 'tpope/vim-speeddating'
    " Plugin 'mattn/emmet-vim'

  " languages/frameworks
    Plugin 'scrooloose/syntastic'
    Plugin 'vim-ruby/vim-ruby'
    " Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-bundler'
    Plugin 'tpope/vim-rbenv'
    Plugin 'tpope/vim-rake'
    Plugin 'tpope/vim-cucumber'
    Plugin 'othree/html5.vim'
    Plugin 'closetag.vim'
    Plugin 'hail2u/vim-css3-syntax'
    Plugin 'pangloss/vim-javascript'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'groenewege/vim-less'
    Plugin 'nono/vim-handlebars'
    Plugin 'briancollins/vim-jst'
    Plugin 'elzr/vim-json'
    Plugin 'tpope/vim-jdaddy'
    Plugin 'tpope/vim-markdown'
    " Plugin 'nelstrom/vim-markdown-folding'
    Plugin 'bats.vim'
    Plugin 'sh.vim'

  " utilities
    Plugin 'tpope/vim-eunuch'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-obsession'
    " Plugin 'tpope/vim-tbone'
    Plugin 'tpope/vim-rsi'
    Plugin 'tpope/vim-projectile'
    " Plugin 'vim-dotenv'
    Plugin 'editorconfig/editorconfig-vim'
    " Plugin 'ap/vim-css-color'
    Plugin 'sjl/gundo.vim'
  " following are for Dash.app integration
    " Plugin 'rizzatti/funcoo.vim'
    " Plugin 'rizzatti/dash.vim'

  " finder
    Plugin 'tpope/vim-vinegar'
    " Plugin 'ack.vim'
    Plugin 'rking/ag.vim'
    Plugin 'kien/ctrlp.vim'
    " Plugin 'wincent/Command-T'
    " Plugin 'L9'
    " Plugin 'FuzzyFinder'
    Plugin 'scrooloose/nerdtree'

  " colors
    Plugin 'altercation/vim-colors-solarized'

  call vundle#end()
  filetype plugin indent on

augroup END
