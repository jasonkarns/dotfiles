" show error markers in gutter (default)
let g:syntastic_enable_signs = 1

" put errors in location list
let g:syntastic_always_populate_loc_list = 1

" check on open
" this doesn't work with project-specific vimrc files because the check hasn't
" been overriden by the local setting until after the OnOpen check has run
" let g:syntastic_check_on_open = 1

" 1 - auto open/close the location window
" 2 - close but don't open error window automatically (default)
let g:syntastic_auto_loc_list = 2

" skip checks when writing on exit
let g:syntastic_check_on_wq = 0

" only 5 errors at a time
let g:syntastic_loc_list_height = 5


" Pick syntastic checker based on config file
if filereadable(".eslintrc")
  let g:syntastic_javascript_checkers = [ 'eslint' ]
elseif filereadable(".jshint")
  let g:syntastic_javascript_checkers = [ 'jshint' ]
else
  let g:syntastic_javascript_checkers = [ 'standard' ]
endif
