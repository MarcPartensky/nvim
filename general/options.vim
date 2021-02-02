"command -nargs=0 -bar Update if &modified
                           "\|    if empty(bufname('%'))
                           "\|        browse confirm write
                           "\|    else
                           "\|        confirm write
                           "\|    endif
                           "\|endif

" highlighting
syntax on

" line number
set number

" line number relative to current line position
set relativenumber

" margin when scrolling
set scrolloff=10

" Case insensitive search
set ignorecase

filetype plugin indent on

" Use tab not spaces
set tabstop=2
set shiftwidth=2

" Use macos system clipboard when yanking
set clipboard=unnamedplus

" set tab to 2 spaces
:autocmd Filetype html,twig setlocal tabstop=2
:autocmd Filetype html,twig setlocal shiftwidth=2

" For kite:
" let g:kite_auto_complete = 0
set completeopt+=noinsert
set completeopt+=menuone

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

"for viewing images
let g:netrw_browsex_viewer="xdg-open"
