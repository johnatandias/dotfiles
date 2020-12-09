let g:srcery_transparent_background = 1
let g:srcery_bold = 1
let g:srcery_inverse = 0
let g:srcery_dim_lisp_paren = 1
colorscheme srcery

autocmd ColorScheme * hi! link SignColumn LineNr
hi! Normal ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

hi! CocErrorHighlight guibg=NONE
hi! CocErrorHighlight guibg=NONE
hi! CocWarningHighlight guibg=NONE
hi! CocInfoHighlight guibg=NONE
hi! CocHintHighlight guibg=NONE

hi! htmlArg cterm=italic term=italic gui=italic
hi! xmlAttrib cterm=italic term=italic gui=italic
hi! tsxComponentName guifg=#FBB829
hi! tsxCloseTagName guifg=#FBB829
hi! tsxCloseComponentName guifg=#FBB829
hi! jsxCloseTag guifg=#FBB829
hi! jsxOpenPunct guifg=#585858
hi! javaScriptLineComment guifg=Gray
hi! typescriptBinaryOp guifg=orange
