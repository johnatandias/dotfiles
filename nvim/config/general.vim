set number relativenumber
set numberwidth=1
set hidden
set mouse=a
set inccommand=split
set et
set ts=2
set sw=2
set nowrap
set encoding=utf8
set autoindent
set smartindent
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
set history=10000
set backspace=indent,eol,start
set showcmd
set ruler

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev E e

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
