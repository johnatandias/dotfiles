call plug#begin()
  " Themes and customizations
  Plug 'mcmartelle/vim-monokai-bold'
  Plug 'itchyny/lightline.vim'
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'luochen1990/rainbow'
  Plug 'morhetz/gruvbox'
  Plug 'bagrat/vim-buffet'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Multiples cursors
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Lint
  Plug 'dense-analysis/ale'

  " Without comments :)
  Plug 'jiangmiao/auto-pairs'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mattn/emmet-vim'
  Plug 'wakatime/vim-wakatime'
  Plug 'majutsushi/tagbar'
  Plug 'metakirby5/codi.vim'
  Plug 'tpope/vim-commentary'
  Plug 'kamykn/spelunker.vim'

  " Autocomplete
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

  " NERDTree
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'scrooloose/nerdcommenter'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Languages
  Plug 'sheerun/vim-polyglot'
  Plug 'reedes/vim-pencil'
  Plug 'tpope/vim-markdown'
  Plug 'jtratner/vim-flavored-markdown'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'pangloss/vim-javascript'

  " Git
  Plug 'kablamo/vim-git-log'
  Plug 'gregsexton/gitv'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rhysd/git-messenger.vim'
call plug#end()

runtime! config/ale.vim
runtime! config/commentary.vim
runtime! config/fzf.vim
runtime! config/general.vim
runtime! config/git.vim
runtime! config/keymappings.vim
runtime! config/languages.vim
runtime! config/lightline.vim
runtime! config/nerdcommenter.vim
runtime! config/nerdtree.vim
runtime! config/rainbow.vim
runtime! config/vim_buffet.vim
runtime! config/theme.vim
