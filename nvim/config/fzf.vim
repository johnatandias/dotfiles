nnoremap <C-p> :GFiles<cr>
nmap ; :Buffers<CR>

let g:fzf_buffers_jump = 1

" Switch buffers with Alt left and right
nnoremap <M-Left> :bprev<CR>
nnoremap <M-h> :bprev<CR>
nnoremap <M-Right> :bnext<CR>
nnoremap <M-l> :bnext<CR>
nnoremap <M-Down> :bdelete<CR>
inoremap <M-Left> :bprev<CR>
inoremap <M-Right> :bnext<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS = '--reverse'

" Searching filenames and content
command! -bang -nargs=* RgFiles
    \ call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '
    \ . (len(<q-args>) > 0 ? <q-args> : '""'), 0,
    \ fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Only show files with match in the content
command! -bang -nargs=* Rg
    \ call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '
    \ . (len(<q-args>) > 0 ? <q-args> : '""'), 0,
    \ fzf#vim#with_preview({'options': ['--delimiter=:', '--nth=2..', '--layout=reverse', '--info=inline']}), <bang>0)