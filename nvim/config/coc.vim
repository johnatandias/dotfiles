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
nmap <silent> do <Plug>(coc-codeaction)

" Diagnostic
nmap <silent> cd <Plug>(coc-diagnostic-info)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap autocomplete
" inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Space> pumvisible() ? neocomplete#close_popup() . "\<Space>" : "\<Space>"
" inoremap <silent> <expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent> <expr> <cr> pumvisible() ? coc#_select_confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent> <expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

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
autocmd FileType coc-explorer set relativenumber
autocmd FileType coc-explorer IndentLinesDisable

autocmd CursorHold * silent call CocActionAsync('highlight')
