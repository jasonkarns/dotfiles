let g:ruby_indent_block_style = 'do'
let g:ruby_indent_assignment_style = 'variable'

let ruby_operators = 1
let ruby_space_errors = 1
let ruby_line_continuation_error = 1
let ruby_global_variable_error   = 1

" let ruby_fold = 0

" default ruby linters: brakeman', 'debride', 'rails_best_practices', 'reek', 'rubocop', 'ruby', 'solargraph', 'sorbet', 'standardrb
" let b:ale_linters = ['standardrb']

let b:ale_fixers = ['rubocop', 'standardrb', 'remove_trailing_lines', 'trim_whitespace']
