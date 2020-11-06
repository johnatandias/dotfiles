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
hi link javaScriptNumber Number 

" TypeScript
let g:yats_host_keyword = 1

" JSX
let g:vim_jsx_pretty_colorful_config = 1

" TSX
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" i3
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.dotfiles/i3/config set filetype=i3config
aug end

function! UnMinify()
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction
command! UnMinify call UnMinify()