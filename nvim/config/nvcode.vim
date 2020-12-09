let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:nvcode_hide_endofbuffer = 1
let g:nvcode_terminal_italics = 1
let g:nvcode_termcolors = 256
colorscheme nvcode

hi! LineNr ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi! SignColumn guibg=NONE

" Git
hi DiffAdd guifg=#608b4e guibg=NONE
hi DiffDelete guifg=#d16969 guibg=NONE
hi DiffChange guifg=#dcdcaa guibg=NONE gui=NONE cterm=NONE
hi DiffText guifg=#dcdcaa guibg=NONE

" COC
hi! CocErrorHighlight guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! CocWarningHighlight guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! CocInfoHighlight guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! CocHintHighlight guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

