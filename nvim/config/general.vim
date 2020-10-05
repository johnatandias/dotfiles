set number relativenumber
set hidden
set mouse=a
set inccommand=split
set et
set ts=2
set sw=2
set nowrap
set encoding=utf8
set autoindent
set copyindent
set incsearch
set hlsearch
set wildmenu
set confirm
set title
set rtp+=~/.fzf
set clipboard^=unnamed,unnamedplus
set autoread
set updatetime=300
set shell=/usr/bin/zsh
set t_Co=256

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
