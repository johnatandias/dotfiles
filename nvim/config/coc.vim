let g:coc_global_extensions = [ 'coc-tsserver' ]

" Show autocomplete when Tab is pressed
inoremap <silent><expr> <Tab> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Split and tab variations.
nmap <silent> <leader>gd :call CocAction('jumpDefinition', 'vsplit')<cr>
nmap <silent> <leader>tgd :call CocAction('jumpDefinition', 'tabe')<cr>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
