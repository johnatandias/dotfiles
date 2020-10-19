let g:coc_global_extensions = [ 
  \ 'coc-tsserver', 
  \ 'coc-snippets',
  \ 'coc-prettier', 
  \ 'coc-pairs',
  \ 'coc-highlight',
  \ 'coc-explorer',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-marketplace',
  \ 'coc-ultisnips'
\ ]

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap autocomplete
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

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

vmap <silent>fx  <Plug>(coc-format-selected)
nmap <silent>fx  <Plug>(coc-format-selected)

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocAction('format')

" (CTRL-B) open coc explorer
nnoremap <silent><C-b> :CocCommand explorer --toggle --sources=buffer+,file+<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd ColorScheme *
      \ hi CocHighlightText ctermbg=242 guibg=#404040
      \ | hi CocErrorHighlight guibg=#802020
      \ | hi CocWarningHighlight guibg=#806022
      \ | hi CocInfoHighlight guibg=#806022
      \ | hi CocHintHighlight guibg=#224290
