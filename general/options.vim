"command -nargs=0 -bar Update if &modified
                           "\|    if empty(bufname('%'))
                           "\|        browse confirm write
                           "\|    else
                           "\|        confirm write
                           "\|    endif
                           "\|endif
													 "
set wrap
set linebreak
set breakindent
set showbreak=ͱ

set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1

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
set tabstop=4
set shiftwidth=4

" Use macos system clipboard when yanking
set clipboard=unnamedplus

" set tab to 2 spaces
:autocmd Filetype html,twig setlocal tabstop=2
:autocmd Filetype html,twig setlocal shiftwidth=2
" :autocmd Filetype js,ts setlocal tabstop=4
" :autocmd Filetype js,ts setlocal shiftwidth=4
set expandtab
set smartindent

" For kite:
" let g:kite_auto_complete = 0
set completeopt+=noinsert
set completeopt+=menuone

set encoding=UTF-8

tnoremap <C-l> <C-\><C-n>:call ClearTerminal()<cr>

function! ClearTerminal()
  set scrollback=1
  let &g:scrollback=1
  echo &scrollback
  call feedkeys("\i")
  call feedkeys("clear\<CR>")
  call feedkeys("\<C-\>\<C-n>")
  call feedkeys("\i")
  sleep 100m
  let &scrollback=s:scroll_value
endfunction

if has('mac') && has('vim_starting')
  let g:clipboard = {
  \   'name': 'macOS-clipboard',
  \   'copy': {
  \      '+': 'pbcopy',
  \      '*': 'pbcopy',
  \    },
  \   'paste': {
  \      '+': 'pbpaste',
  \      '*': 'pbpaste',
  \   },
  \   'cache_enabled': 0,
  \ }
endif

if has('clipboard') && has('vim_starting')
  set clipboard& clipboard^=unnamed,unnamedplus
endif

let g:coc_node_path = "/usr/local/bin/node"
let g:coc_npm_path = "/usr/local/bin/npm"
let g:coc_yarn_path = "/Users/marcpartensky/.yarn/bin/yarn"

"for viewing images
" let g:netrw_browsex_viewer="xdg-open"

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Telescope find_files
" augroup END
" autocmd VimEnter * :Vexplore
