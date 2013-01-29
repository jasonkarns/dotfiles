
  " visual
  set nowrap
  set number
  set ruler
  set showmatch
  set cursorline
  set linespace=2
  set laststatus=2
  set showtabline=2
  set showcmd
  set cmdheight=2
  set switchbuf=useopen


"" TODO configure backup files location?

  " tab completion
  set wildmenu
  set wildmode=longest,list
  "" TODO configure tab completion ignore file patterns?

  " whitespace
  set autoindent
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set smarttab
  set expandtab
  set shiftround
  set list
  set listchars=tab:▸\ ,trail:·,extends:⇒,precedes:⇐

  " searching
  set hlsearch
  set ignorecase
  set smartcase
  set incsearch

  " colorscheme
  syntax on
  colorscheme solarized
    if has('gui_running')
      set background=light
    else
      set background=dark
    endif

  " guioptions
  set guioptions-=T " kill the toolbar in MacVim

