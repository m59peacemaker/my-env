execute pathogen#infect()

set list listchars=trail:·,tab:»·
set history=1000
set number
" set indent space count
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set t_Co=256
highlight LineNr ctermfg=grey
set autoindent
set smartindent
set spell spelllang=en_us

" makes file watchers work
set nowritebackup

set backupdir=~/tmp//
set directory=~/tmp//
set undodir=~/tmp//

" plugin settings
let g:indentLine_char = '|'

" mappings
map <C-c> "+y<CR>

command Wq wq

" spell check theme
hi SpellBad cterm=undercurl,bold
hi SpellBad ctermbg=white
