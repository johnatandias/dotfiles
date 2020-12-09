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
