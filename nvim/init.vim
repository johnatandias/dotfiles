call plug#begin()
  " Themes and customizations
  Plug 'itchyny/lightline.vim'
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'luochen1990/rainbow'
  Plug 'bagrat/vim-buffet'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'srcery-colors/srcery-vim'
  Plug 'mhinz/vim-startify'
  Plug 'Yggdroot/indentLine'

  " Integrations
  Plug 'benmills/vimux'
  Plug 'voldikss/vim-floaterm'

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
  Plug 'chrisbra/Colorizer'
  Plug 'kamykn/spelunker.vim'
  Plug 'mboughaba/i3config.vim'
  Plug 'johngrib/vim-game-snake'

  " Autocomplete
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

  " Languages
  Plug 'sheerun/vim-polyglot'
  Plug 'reedes/vim-pencil'
  Plug 'tpope/vim-markdown'
  Plug 'jtratner/vim-flavored-markdown'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'styled-components/vim-styled-components'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'pangloss/vim-javascript'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'othree/yajs.vim'
  Plug 'herringtondarkholme/yats.vim'
  Plug 'neoclide/vim-jsx-improve'
  Plug 'othree/html5.vim'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'elzr/vim-json'

  " Debugging
  Plug 'puremourning/vimspector', { 'do': 'nvm install --lts 10; nvm use --lts 10; ./install_gadget.py --force-enable-node' }

  " Git
  Plug 'kablamo/vim-git-log'
  Plug 'gregsexton/gitv'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rhysd/git-messenger.vim'

  " Sessions
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'
call plug#end()

source $HOME/.dotfiles/nvim/config/ale.vim
source $HOME/.dotfiles/nvim/config/coc.vim
source $HOME/.dotfiles/nvim/config/commentary.vim
source $HOME/.dotfiles/nvim/config/floaterm.vim
source $HOME/.dotfiles/nvim/config/fzf.vim
source $HOME/.dotfiles/nvim/config/general.vim
source $HOME/.dotfiles/nvim/config/git.vim
source $HOME/.dotfiles/nvim/config/keymappings.vim
source $HOME/.dotfiles/nvim/config/languages.vim
source $HOME/.dotfiles/nvim/config/lightline.vim
source $HOME/.dotfiles/nvim/config/nerdcommenter.vim
source $HOME/.dotfiles/nvim/config/rainbow.vim
source $HOME/.dotfiles/nvim/config/sessions.vim
source $HOME/.dotfiles/nvim/config/startify.vim
source $HOME/.dotfiles/nvim/config/vim_buffet.vim
source $HOME/.dotfiles/nvim/config/theme.vim
