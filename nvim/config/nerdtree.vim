" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" When open change the focus to the file (and not the NERDTree)
autocmd! VimEnter * NERDTree | wincmd w

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files
let NERDTreeShowHidden=1

" (CTRL-B) open nerd tree
nnoremap <C-b> <ESC>:NERDTreeToggle<CR>

