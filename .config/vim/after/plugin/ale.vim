" let g:ale_linter_aliases = {'json': ['json', 'javascript']}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_open_list = 'on_save'
