nnoremap <C-p> :GFiles<cr>
nnoremap <leader><CR> :Buffers<cr>

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

