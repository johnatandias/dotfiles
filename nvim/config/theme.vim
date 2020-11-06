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
colorscheme srcery

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! CursorLineNR ctermbg=NONE guibg=NONE
hi! Comment ctermfg=Gray ctermbg=NONE guifg=NONE guibg=Gray
hi! SignColumn ctermfg=Gray ctermbg=NONE guifg=Gray guibg=NONE
hi! ColorColumn ctermbg=NONE guibg=lightgrey
hi! LineNr ctermfg=Gray ctermbg=NONE guifg=Gray guibg=NONE
hi! Search ctermfg=green ctermbg=black cterm=bold guifg=#bada55 guibg=NONE gui=bold

autocmd ColorScheme * hi! link SignColumn LineNr
