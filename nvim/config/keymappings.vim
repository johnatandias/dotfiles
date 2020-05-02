let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>
noremap <C-s> :w<cr>
nnoremap <c-p> :Files<cr>

nnoremap <M-j> ddp
nnoremap <M-k> ddkP
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Switch buffers with Alt left and right
nnoremap <M-Left> :bprev<CR>
nnoremap <M-Right> :bnext<CR>
nnoremap <M-Down> :b#<bar>bd#<CR>
inoremap <M-Left> :bprev<CR>
inoremap <M-Right> :bnext<CR>

