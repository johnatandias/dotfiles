let g:colorscheme_switcher_define_mappings = 1

let g:indentLine_bufNameExclude = ['term:.*', 'coc.*']
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:Hexokinase_highlighters = [ 'virtual' ]

set t_Co=256
set termguicolors
set cursorline
set background=dark
set guifont=Fira\ Code\ Nerd\ Font
syntax enable

source $HOME/.dotfiles/nvim/config/nvcode.vim

let g:fern#renderer = "nerdfont"

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern,nerdtree,startify call glyph_palette#apply()
augroup END
