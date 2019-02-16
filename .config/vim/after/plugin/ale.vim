nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" let g:ale_open_list = 'on_save'

let g:ale_linters = { 'javascript': [ 'standard' ] }
let g:ale_fixers = { 'javascript': [ 'standard', 'prettier_standard' ] }
let g:ale_fix_on_save = 1
