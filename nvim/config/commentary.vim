" JSX Files
autocmd BufNewFile,BufRead *.jsx let b:jsx_ext_found = 1
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

" TSX Files
autocmd BufNewFile,BufRead *.tsx let b:jsx_ext_found = 1
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.jsx

autocmd BufNewFile,BufRead *.js if <SID>EnableJSX() | set filetype=javascript.jsx | endif
autocmd BufNewFile,BufRead *.ts if <SID>EnableJSX() | set filetype=typescript.jsx | endif
