let g:lightline = {
\   'colorscheme': 'srcery',
\   'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\   'gitbranch': 'FugitiveHead'
\   },
\   'enable': {
\     'tabline': 0
\   },
\ }
