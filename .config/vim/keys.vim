let mapleader="\<Space>"

  "" shortcut for closing all buffers
  cmap bda bufdo bdelete

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
  " nnoremap <CR> :nohlsearch<CR>

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

  "" quick-run Grunt
  map <leader>g :! grunt<CR>

  "" grep word under cursor
  nnoremap <leader>* :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
