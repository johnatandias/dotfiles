let g:startify_files_number = 20
let g:startify_change_to_dir = 0
let g:startify_custom_header = [ ]
let g:startify_relative_path = 0
let g:startify_use_env = 1

let g:startify_lists = [
\  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },
\  { 'type': 'sessions',  'header': [ 'Sessions' ]       },
\  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },
\  { 'type': 'commands',  'header': [ 'Commands' ]       },
\ ]

let g:startify_commands = [
\   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
\   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
\   { 'uc': [ 'Update CoC Plugins', ':CocUpdate' ] },
\ ]

let g:startify_bookmarks = [
    \ { 'c': '~/.dotfiles/nvim/init.vim' },
    \ { 'g': '~/.gitconfig' },
    \ { 'z': '~/.zshrc' }
\ ]

autocmd User Startified setlocal cursorline
