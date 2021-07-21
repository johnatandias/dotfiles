set number relativenumber
set numberwidth=1
set hidden
set mouse=a
set inccommand=split
set et
set ts=2
set sw=2
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,latin1
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
set updatetime=50
set history=10000
set backspace=indent,eol,start
set showcmd
set ruler
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set ttyfast
set textwidth=0
set wrapmargin=0
set wrap
set linebreak
set scrolloff=8
set expandtab

lang en_US
" Set encoding.
if has('multi_byte')
  scriptencoding utf-8
  set encoding=utf-8
  set fileencodings=utf-8,cp932,sjis,utf-16le,euc-jp

  if has("win32") || has("win64")
    set termencoding=gbk
  endif
  if has("linux") || has("unix")
    set termencoding=utf-8
  endif
endif

if has('unix')
  if has('mac')
    set shell=/bin/zsh
    set nocursorline
    set lazyredraw
    set synmaxcol
  else
    set shell=/usr/bin/zsh
  endif
elseif has('win32') || has('win64')
"
endif

" Fold
set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99

au VimEnter * call matchadd('SpecialKey', '^\s\+', -1)
au VimEnter * call matchadd('SpecialKey', '\s\+$', -1)

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
