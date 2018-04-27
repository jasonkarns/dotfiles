if exists(':CtrlP')

  " open a file
  nmap <leader>o :CtrlP<CR>
  " clear cache and open file
  nmap <leader>O :CtrlPClearCache<CR>:CtrlP<CR>
  " open buffer
  nmap <leader>b :CtrlPBuffer<CR>

  if executable('ag')
    " Use ag in CtrlP for listing files
    "   --hidden: include hidden .dotfiles (still respects ignore rules)
    "   --ignore-dir git: must re-ignore git b/c ^^ (since .git isn't in .gitignore)
    "   --files-with-matches: only list the filenames, not matched lines
    "   -g '': dummy pattern so all files match
    " let g:ctrlp_user_command = 'ag --hidden --ignore-dir .git --files-with-matches --nocolor --filename-pattern "" %s'
    let g:ctrlp_user_command = 'git ls-files %s'

    " " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
  endif

endif
