let g:prettier#autoformat = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#config#print_width = 100
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#parser = 'flow'
let g:prettier#config#bracket_spacing = 'true'
autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
map <C-f> :PrettierAsync<CR>
