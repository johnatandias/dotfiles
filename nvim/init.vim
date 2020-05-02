call plug#begin()
  Plug 'sickill/vim-monokai'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'dense-analysis/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'editorconfig/editorconfig-vim'
  Plug 'nikvdp/neomux'
  Plug 'Chiel92/vim-autoformat'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'itchyny/lightline.vim'
  Plug 'mattn/emmet-vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'reedes/vim-pencil'
  Plug 'tpope/vim-markdown'
  Plug 'jtratner/vim-flavored-markdown'
  Plug 'kablamo/vim-git-log'
  Plug 'gregsexton/gitv'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'easymotion/vim-easymotion'
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'APZelos/blamer.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'ryanoasis/vim-devicons'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'wakatime/vim-wakatime'
call plug#end()

runtime! config/blamer.vim
runtime! config/coc.vim
runtime! config/fzf.vim
runtime! config/general.vim
runtime! config/git.vim
runtime! config/keymappings.vim
runtime! config/lightline.vim
runtime! config/nerdcommenter.vim
runtime! config/nerdtree.vim
runtime! config/prettier.vim
runtime! config/theme.vim
