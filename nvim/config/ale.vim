let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier-eslint', 'prettier', 'eslint',  'trim_whitespace', 'remove_trailing_lines']
let g:ale_fixers['typescript'] = ['prettier-eslint', 'prettier', 'eslint', 'trim_whitespace', 'remove_trailing_lines']
let g:ale_fixers['typescript.tsx'] = ['prettier-eslint', 'prettier', 'eslint', 'trim_whitespace', 'remove_trailing_lines']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['scss'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_fixers['less'] = ['prettier']

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
