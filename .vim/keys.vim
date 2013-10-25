let mapleader=","

  "" clears end of line whitespace
  map <leader>s :%s/\s\+$//e<CR>

  "" make Y consistent with D, C, etc
  nnoremap Y y$

  " Move around splits with <c-hjkl>
  nnoremap <c-j> <c-w>j
  nnoremap <c-k> <c-w>k
  nnoremap <c-h> <c-w>h
  nnoremap <c-l> <c-w>l

  " unhighlight search
  nnoremap <CR> :nohlsearch<CR>

  "" tab navigation
  nmap <leader>j :tabn<CR>
  nmap <leader>k :tabp<CR>
  nnoremap <C-S-tab> :tabprevious<CR>
  nnoremap <C-tab>   :tabnext<CR>
  nnoremap <C-t>     :tabnew<CR>
  inoremap <C-S-tab> <Esc>:tabprevious<CR>i
  inoremap <C-tab>   <Esc>:tabnext<CR>i
  inoremap <C-t>     <Esc>:tabnew<CR>

  "" disable Middle Click
  nnoremap <MiddleMouse> <Nop>
  nnoremap <2-MiddleMouse> <Nop>
  nnoremap <3-MiddleMouse> <Nop>
  nnoremap <4-MiddleMouse> <Nop>

  "" quick-run RSpec
  map <leader>r :! rspec %<CR>

  "" FuzzyFinder mappings
  if exists(':FufHelp')
    nmap <leader>b :FufBuffer<CR> " pick a file from the buffers
    nmap <leader>o :FufFile<CR>   " open a file
    nmap <leader>f :FufLine<CR>   " find a line
    nmap <leader>t :FufTag<CR>    " find a tag
  endif
