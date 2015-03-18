if exists(':CtrlP')

  " open a file
  nmap <leader>o :CtrlP<CR>
  " clear cache and open file
  nmap <leader>O :CtrlPClearCache<CR>:CtrlP<CR>
  " open buffer
  nmap <leader>b :CtrlPBuffer<CR>

  if executable('ag')
    " Use ag in CtrlP for listing files
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " " ag is fast enough that CtrlP doesn't need to cache
    " let g:ctrlp_use_caching = 0
  endif

endif
