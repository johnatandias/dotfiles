" Markdown Syntax Support
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

autocmd BufRead,BufNewFile *.conf,config setf dosini

let g:mustache_abbreviations = 1

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" TypeScript
let g:yats_host_keyword = 1

" JSX
let g:vim_jsx_pretty_colorful_config = 1

" i3
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.dotfiles/i3/config set filetype=i3config
aug end
