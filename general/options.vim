"command -nargs=0 -bar Update if &modified
                           "\|    if empty(bufname('%'))
                           "\|        browse confirm write
                           "\|    else
                           "\|        confirm write
                           "\|    endif
                           "\|endif

syntax on
set number
set relativenumber

filetype plugin indent on

" For kite:
" let g:kite_auto_complete = 0
set completeopt+=noinsert
set completeopt+=menuone

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

"for viewing images
let g:netrw_browsex_viewer="xdg-open"
