let g:airline_skip_empty_sections = 1
let g:airline_theme='srcery'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:colorscheme_switcher_define_mappings = 1
let g:indentLine_bufNameExclude = ['term:.*', 'coc.*']

set t_Co=256
set cursorline
set background=dark
set guifont=Fira\ Code\ Nerd\ Font
syntax enable
let g:srcery_transparent_background = 1
let g:srcery_bold = 1
let g:srcery_inverse = 0
let g:srcery_dim_lisp_paren = 1
set termguicolors
colorscheme srcery
autocmd ColorScheme * hi! link SignColumn LineNr
