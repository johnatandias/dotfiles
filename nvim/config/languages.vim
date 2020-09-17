" Markdown Syntax Support
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

autocmd BufRead,BufNewFile *.conf,config setf dosini

let g:mustache_abbreviations = 1
