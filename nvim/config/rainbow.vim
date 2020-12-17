let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained',
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody',
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'],
\		},
\		'css': 0,
\	}
\}

let g:rainbow_active = 1

" \   'javascript': {
" \     'operators': '_,\|+\|-\|\*\|\*\*\| / \|//\|===\|!==\|==\|!=\| < \|<=\| > \|>=\|:\|%\|&\||_',
" \     'parentheses_options': 'containedin=jsxElement fold ',
" \     'parentheses': [
" \       'start=/\z((\)/ end=/)/ contains=@jsAll', 'start=/\[/ end=/\]/ contains=@jsAll',
" \       'start=/{/ end=/}/ contains=@jsAll containedin=jsTemplateString',
" \       'start=_<\z([^ />]*\)>\?_ end=_</\z1>_ end=_/>_ contains=jsxOpenTag,jsxAttrib,jsxExpressionBlock,jsxSpreadOperator,jsComment,@javascriptComments,javaScriptLineComment,javaScriptComment',
" \     ],
" \     'after': [
" \       'syn clear jsParen', 'syn clear jsFuncArgs', 'syn clear jsxExpressionBlock',
" \       'syn clear jsParensError', 'syn clear jsParenIfElse', 'syn clear jsDestructuringBlock',
" \       'syn clear jsFuncBlock', 'syn clear jsArrowFuncArgs', 'syn clear jsParenSwitch',
" \       'syn clear jsBlock', 'syn clear jsObject', 'syn clear jsxTag', 'syn clear jsTemplateExpression',
" \       'syn clear jsParenRepeat', 'syn clear jsRepeatBlock'
" \     ],
" \     'contains_prefix': '',
" \    },

