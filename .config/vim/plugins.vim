augroup bundles
  autocmd!

  filetype on                    " OS X hack. must be on before it can be turned off
  filetype off                   " required for vundle

  set rtp+=$XDG_CONFIG_HOME/vim/vundle.vim        " add vundle to runtime path
  call vundle#begin("$XDG_DATA_HOME/vim/bundle")  " invoke vundle

  " let Vundle manage vundle
    Plugin 'gmarik/vundle.vim'

  " syntax utilities
    Plugin 'tpope/vim-abolish'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-characterize'
    " Plugin 'tpope/vim-sleuth'
    Plugin 'tpope/vim-ragtag'
    Plugin 'tpope/vim-speeddating'
    Plugin 'tpope/vim-jdaddy'
    Plugin 'closetag.vim'
    Plugin 'godlygeek/tabular'

  " languages/frameworks
    Plugin 'w0rp/ale'

    Plugin 'sheerun/vim-polyglot'
    " following all provided by vim-polyglot
    " Plugin 'vim-ruby/vim-ruby'
    " Plugin 'tpope/vim-cucumber'
    " Plugin 'tpope/vim-git'
    " Plugin 'othree/html5.vim'
    " Plugin 'pangloss/vim-javascript'
    " Plugin 'mxw/vim-jsx'
    " Plugin 'kchmck/vim-coffee-script'
    " Plugin 'groenewege/vim-less'
    " Plugin 'briancollins/vim-jst'
    " Plugin 'elzr/vim-json'
    Plugin 'sh.vim'
    " main bats.vim plugin just treats them as sh
    " Plugin 'bats.vim'
    Plugin 'aliou/bats.vim'

    Plugin 'tpope/vim-rails'
    Plugin 'tpope/vim-bundler'
    Plugin 'tpope/vim-rbenv'
    Plugin 'tpope/vim-rake'


  " utilities
    Plugin 'airblade/vim-gitgutter'
    Plugin 'powerman/vim-plugin-ansiesc'
    Plugin 'tpope/vim-dispatch'
    Plugin 'tpope/vim-eunuch'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-obsession'
    Plugin 'tpope/vim-tbone'
    " disabling rsi for now because it breaks <ESC> in macros
"    Plugin 'tpope/vim-rsi'
    Plugin 'tpope/vim-projectile'
    Plugin 'tpope/vim-dotenv'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'sjl/gundo.vim'

  " finder
    Plugin 'tpope/vim-vinegar'
    " Plugin 'ack.vim'
    Plugin 'rking/ag.vim'
    Plugin 'kien/ctrlp.vim'
    " Plugin 'scrooloose/nerdtree'
    " Plugin 'Xuyuanp/nerdtree-git-plugin'

  " colors
    Plugin 'altercation/vim-colors-solarized'

  call vundle#end()
  filetype plugin indent on

augroup END
