let g:lightline = {
\   'colorscheme': 'one',
\   'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\     'gitbranch': 'FugitiveHead'
\   },
\   'component': {
\     'charvaluehex': '0x%B'
\   },
\   'enable': {
\     'tabline': 0
\   },
\ }
