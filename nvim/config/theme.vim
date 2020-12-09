let g:colorscheme_switcher_define_mappings = 1

let g:indentLine_bufNameExclude = ['term:.*', 'coc.*']
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

set t_Co=256
set termguicolors
set cursorline
set background=dark
set guifont=Fira\ Code\ Nerd\ Font
syntax enable

source $HOME/.dotfiles/nvim/config/nvcode.vim
