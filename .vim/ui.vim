
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

  " statusline
  set statusline=
  set statusline+=%f                              " filename
  set statusline+=\                               "
  set statusline+=%m                              " modified flag
  set statusline+=%r                              " read-only flag
  set statusline+=%Y                              " filetype
                                                  "
  set statusline+=%=                              " right-aligned from here
                                                  "
  set statusline+=\                               "
  set statusline+=%{fugitive#statusline()}        " git info
  set statusline+=\                               "
                                                  "
  set statusline+=%<                              " truncate point if line is too long
                                                  "
  set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
  set statusline+=%{&ff}]                         " file format (line-ending)
  set statusline+=\ \                             "
  set statusline+=COL=%c                          " column
  set statusline+=\ \                             "
  set statusline+=LINE=%2l/%2L                    " line number/total lines
  set statusline+=\                               "
  set statusline+=(%P)                            " percentage
  set statusline+=\ \                             "
