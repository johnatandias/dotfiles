nnoremap <C-p> :GFiles<cr>
nmap ; :Buffers<CR>

let g:fzf_buffers_jump = 1

" Switch tabs with Ctrl left and right
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-up> :tabnew<CR>
nnoremap <C-down> :tabclose<CR>
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>

" Switch buffers with Alt left and right
nnoremap <M-Left> :bprev<CR>
nnoremap <M-Right> :bnext<CR>
nnoremap <M-Down> :bdelete<CR>
inoremap <M-Left> :bprev<CR>
inoremap <M-Right> :bnext<CR>

