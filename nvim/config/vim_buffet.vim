nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

let g:buffet_powerline_separators = 1 
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
let g:buffet_show_index = 1

function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer    gui=NONE guibg=#000000 guifg=#ffffff
  hi! BuffetActiveBuffer     gui=NONE guibg=#000000 guifg=#000000
  hi! BuffetBuffer           gui=NONE guibg=#000000 guifg=#808080
  hi! BuffetModCurrentBuffer gui=NONE guibg=#8be9fd guifg=#000000
  hi! BuffetModActiveBuffer  gui=NONE guibg=#ffb86c guifg=#000000
  hi! BuffetModBuffer        gui=NONE guibg=#ff5555 guifg=#000000
  hi! BuffetTrunc            gui=NONE guibg=#000000 guifg=#000000
  hi! BuffetTab              gui=NONE guibg=#000000 guifg=#000000
endfunction
