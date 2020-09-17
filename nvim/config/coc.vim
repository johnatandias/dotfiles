let g:coc_global_extensions = [ 'coc-tsserver' ]

" Show autocomplete when Tab is pressed
inoremap <silent><expr> <Tab> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_suggest_disable = 1

