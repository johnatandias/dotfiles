call plug#begin()
  " Themes and customizations
  Plug 'srcery-colors/srcery-vim'
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'lambdalisue/glyph-palette.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
  Plug 'navarasu/onedark.nvim'

  " Editor customizations
  Plug 'itchyny/lightline.vim'
  Plug 'luochen1990/rainbow'
  Plug 'mhinz/vim-startify'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'hoschi/yode-nvim'

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
  Plug 'hail2u/vim-css3-syntax'

  " Autocomplete
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

  " Languages
  Plug 'sheerun/vim-polyglot'
  Plug 'neovim/nvim-lspconfig'
  Plug 'dpelle/vim-LanguageTool'
  " Plug 'Quramy/tsuquyomi'

  " Git
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
source $HOME/.dotfiles/nvim/config/yode-nvim.vim
