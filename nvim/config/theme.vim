colorscheme gruvbox

let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'

let g:lightline.colorscheme = 'gruvbox'

let g:airline_section_c = '%F'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

set cursorline
set background=dark
syntax enable

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! CursorLineNR ctermbg=NONE guibg=NONE
hi! Comment ctermfg=Black ctermbg=Gray guifg=Black guibg=Gray