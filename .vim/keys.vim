let mapleader=","

  "" clears end of line whitespace
  map <leader>s :%s/\s\+$//e<CR>

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

  "" make Y consistent with D, C, etc
  nnoremap Y y$

  "" quick-run RSpec
  map <leader>r :! rspec %<CR>

  "" FuzzyFinder mappings
  map <leader>b :FufBuffer<CR> " pick a file from the buffers
  map <leader>o :FufFile<CR>   " open a file
  map <leader>f :FufLine<CR>   " find a line
  map <leader>t :FufTag<CR>    " find a tag
