let mapleader=" "
nnoremap <leader>; a;<esc>
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
nnoremap <silent><M-Left> :bprev<CR>
nnoremap <silent><M-Right> :bnext<CR>
nnoremap <silent><M-Down> :bp<bar>sp<bar>bn<bar>bd<CR>

" Tagbar
map <C-m> :TagbarToggle<CR>

" Move select lines to up or down
nnoremap <M-j> ddp
nnoremap <M-k> ddkP
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

nnoremap <leader>l :ls<CR>:b<space>

" Copy selection to system clipboard
vnoremap <leader>y "+y

" Toggle commentary
noremap <leader>/ :Commentary<esc>

" ripgrep
nmap <leader>f :Rg<esc>

" Git commits
nmap <leader>c :Commits<esc>

" Git commits for the current buffer
nmap <leader>h :BCommits<esc>

" Show git commit message from the line
nmap <leader>m :GitMessenger<esc>

nmap <leader>vs :source $HOME/.dotfiles/nvim/init.vim<CR>

" Identify the syntax highlighting group used at the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>