let mapleader=" "
nnoremap <leader>; a;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pi :PlugInstall<cr>
noremap <C-s> :w<cr>
nnoremap <c-p> :Files<cr>

" gi moves to last insert mode (default)
" gI moves to last modification
nnoremap gI `.

" Behave vim
nnoremap Y y$

" Keeping centered pointer
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Switch buffers with Alt left and right
nnoremap <silent><M-Left> :bprev<CR>
nnoremap <silent><M-Right> :bnext<CR>
nnoremap <silent><M-Down> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent><M-j> :bp<bar>sp<bar>bn<bar>bd<CR>

nnoremap <silent><C-Left> :bprev<CR>
nnoremap <silent><C-Right> :bnext<CR>
nnoremap <silent><C-Down> :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <silent><C-j> :bp<bar>sp<bar>bn<bar>bd<CR>

" Close all the buffers.
nnoremap <leader>cab :SClose <cr>

" Move select lines to up or down
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv
inoremap <M-j> <esc>:m .+1<CR>==
inoremap <M-k> <esc>:m .-2<CR>==

" Add quotes around visual selection
vnoremap " <esc>`>a"<esc>`<i"<esc>
vnoremap ' <esc>`>a'<esc>`<i'<esc>
vnoremap ( <esc>`>a)<esc>`<i(<esc>

" Quickly clean up after searching/highlighting
map <C-h> :noh<CR>

" Copy selection to system clipboard
vnoremap <leader>y "+y

" Toggle commentary
noremap <leader>/ :Commentary<esc>

" ripgrep
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg -g '!design/' -g '!{dist,build,lib,node_modules,.git}/*' -g '!{yarn.lock,package-lock.json}' --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--exact --delimiter : --nth 4..'}), <bang>0)
nmap <leader>f :Rg<esc>
nnoremap <leader>ff :RgFiles<CR>

" Git
nmap <leader>gc :Commits<esc>
nmap <leader>gh :BCommits<esc>
nmap <leader>gm :GitMessenger<esc>

" Source VIM settings
nmap <leader>vs :source $HOME/.dotfiles/nvim/init.vim<CR>

" Identify the syntax highlighting group used at the cursor
nnoremap <f9> :echo synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>
nnoremap <f10> :echo ("hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">")<cr>
nnoremap <f11> :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>
nnoremap <f12> :exec 'syn list '.synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" Prettier
nnoremap <leader>p :Prettier<CR>

" Startify
nnoremap <leader>s :Startify<CR>

" Relative or absolute number lines
function! NumberToggle()
    if &relativenumber
     set norelativenumber
    else
      set relativenumber
    endif
endfunction
nnoremap <silent><leader>n :call NumberToggle()<CR>

" Scroll
" nnoremap <up> <c-y>
" nnoremap <down> <c-e>
" nnoremap <right> zl
" nnoremap <left> zh
