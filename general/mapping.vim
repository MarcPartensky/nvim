" Insert mode paste
inoremap <C-Insert> <C-r>*
" Command mode paste
cnoremap <C-Insert> <C-r>*
" Normal mode paste
nnoremap <C-Insert> P
" Visual mode paste (without yanking replaced text)
vnoremap <C-Insert> "_dP
" Remap Copy Key Mappings
" ----------
" Remap copy to work in neovim
vmap <M-[>2;5+ y
" Select all
noremap <C-S-Insert> <Esc>ggVG

" if has('nvim')
"     " map <A-n> :bnext<CR>
"     function! s:alt_key(key)
"         return "<A-". a:key . ">"
"     endfun
" else
"     " map <Esc>n :bnext<CR>
"     function! s:alt_key(key)
"         return "<Esc>". a:key
"     endfun
" endif

" function! s:map_alt(key, action)
"     exec "map " . s:alt_key(a:key). " " a:action
" endfun

" function! s:imap_alt(key, action)
"     exec "imap " . s:alt_key(a:key). " " a:action
" endfun

" map <C-w> :q<CR>
map <C-q> :q<CR>

" toggle file manager
" map <C-o> :NERDTreeToggle<CR>
map <C-o> :CocCommand explorer<CR>
augroup MyCocExplorer
  autocmd!
  autocmd VimEnter * sil! au! FileExplorer *
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | silent! bd | exe 'CocCommand explorer ' . d | endif
augroup END

" comment
nmap <C-_> :Commentary<CR>
vmap <C-_>   <Plug>Commentary<CR>gv
nmap <M-'> :Commentary<CR>
vmap <M-'> :Commentary<CR>gv
imap <M-'> <Esc>gV:Commentary<CR>i

" indentation
vmap <M-]> >gv|
vmap <M-[> <gv
nmap <M-]> <Esc>v><Esc>
nmap <M-[> <Esc>v<<Esc>
imap <M-]> <C-t>
imap <M-[> <C-d>

"show the date when pressing f2
map <F2> :echo 'Nous sommes le: ' . strftime('%c')<CR>

" execute current file
map <C-i> :!"%:p"<CR>
map <C-m> :make run<CR>
map <C-y> :!pylint %<CR>

" vim-session
" nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession
nnoremap <leader>sc :CloseSession

" git shortcut
" commit
:command -nargs=+ Gc :! git add -A; git commit -m "<args>"
nmap gc :Gc 
:command -nargs=+ Gn :! git add -A; git commit -m "<args>"
nmap gn :Gn 
" push
:command Gp :!git push
nmap gp :Gp

" commit and push
:command -nargs=+ Gt :! git add -A; git commit -m "<args>"; git push
nmap gt :Gt 

"echo current activity
map <F3> :!curl --silent ipconfig.io<CR>
" map <F3> :python /Users/marcpartensky/programs/python/repository-2020/isep-hyperplanning.py<CR>


"show the date when saving the buffer
" augroup SAVING
"     autocmd BufWritePost * echo strftime('%c')
" augroup END

"nnoremap <silent> <C-S> :<C-u>Update<CR>

":map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
":imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"

autocmd filetype python map <buffer> <f9> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
" :autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <sec>:m .+1<CR>==
inoremap <C-k> <sec>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
