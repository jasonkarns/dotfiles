" show error markers in gutter (default)
let g:syntastic_enable_signs = 1

" check on open
" this doesn't work with project-specific vimrc files because the check hasn't
" been overriden by the local setting until after the OnOpen check has run
" let g:syntastic_check_on_open = 1

" 1 - auto open/close the location window
" 2 - close but don't open error window automatically (default)
let g:syntastic_auto_loc_list = 2

" only 5 errors at a time
let g:syntastic_loc_list_height = 5


let g:syntastic_javascript_checkers = [ 'standard' ]
