execute pathogen#infect()

" vim command history length i.e. :%s/foo/bar/g  or /findMe
set history=200

" display line numbers
set number

set list listchars=tab:\|\ ,trail:·
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" start new line with same indentation as the previous
set autoindent

" inserts extra indentation in some cases
set smartindent

" highlight spelling errors
set spell spelllang=en_us

" makes file watchers work
set nowritebackup

set backupdir=~/tmp//
set directory=~/tmp//
set undodir=~/tmp//

" ---- plugin settings ----

" show this character at every indentation level
let g:indentLine_char = '|'

" stop vim_json from hiding quotes
" TODO: it would be neat to have a plugin to show JSON as yaml
"    - display as yaml, edit as yaml
"    - have an options like - set: json_as_yaml = 0 - view the actual json
let g:vim_json_syntax_conceal = 0

" ---- mappings ----

" ctrl + c copies selection to clipboard
" press "6" then "ctrl + c" to copy 6 lines
" select text in visual mode, then "ctrl + x"
map <C-c> "+y<CR>

" aliases for common typos
command Wq wq
command Q q

" ---- visual ----

colorscheme my-theme

" spell check style
" hi SpellBad cterm=undercurl,bold
" hi SpellBad ctermbg=white
