call plug#begin()
  " Themes and customizations
  Plug 'srcery-colors/srcery-vim'
  Plug 'christianchiarulli/nvcode-color-schemes.vim'

  " Editor customizations
  Plug 'itchyny/lightline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'luochen1990/rainbow'
  Plug 'bagrat/vim-buffet'
  Plug 'mhinz/vim-startify'
  Plug 'easymotion/vim-easymotion'
  Plug 'Jorengarenar/vim-MvVis'

  " Indent line
  Plug 'Yggdroot/indentLine'

  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  Plug 'nvim-treesitter/playground'

  " Integrations
  Plug 'benmills/vimux'
  Plug 'voldikss/vim-floaterm'

  " Multiples cursors
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'

  " Without comments :)
  Plug 'jiangmiao/auto-pairs'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mattn/emmet-vim'
  " Plug 'wakatime/vim-wakatime'
  Plug 'metakirby5/codi.vim'
  Plug 'tpope/vim-commentary'
  Plug 'chrisbra/Colorizer'
  Plug 'mboughaba/i3config.vim'
  Plug 'johngrib/vim-game-snake'
  Plug 'hail2u/vim-css3-syntax'

  " Autocomplete
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

  " Languages
  Plug 'sheerun/vim-polyglot'
  Plug 'neovim/nvim-lspconfig'

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

source $HOME/.dotfiles/nvim/config/airline.vim
source $HOME/.dotfiles/nvim/config/coc.vim
source $HOME/.dotfiles/nvim/config/commentary.vim
source $HOME/.dotfiles/nvim/config/floaterm.vim
source $HOME/.dotfiles/nvim/config/fzf.vim
source $HOME/.dotfiles/nvim/config/general.vim
source $HOME/.dotfiles/nvim/config/git.vim
source $HOME/.dotfiles/nvim/config/keymappings.vim
source $HOME/.dotfiles/nvim/config/languages.vim
source $HOME/.dotfiles/nvim/config/lightline.vim
source $HOME/.dotfiles/nvim/config/rainbow.vim
source $HOME/.dotfiles/nvim/config/sessions.vim
source $HOME/.dotfiles/nvim/config/startify.vim
source $HOME/.dotfiles/nvim/config/vim_buffet.vim
source $HOME/.dotfiles/nvim/config/treesitter.vim
source $HOME/.dotfiles/nvim/config/theme.vim
