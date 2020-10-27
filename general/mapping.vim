"toggle the nerdtree filemanager
map <C-o> :NERDTreeToggle<CR>
nmap <C-_> :Commentary<CR>
vmap <C-_>   <Plug>Commentary<CR>gv

"show the date when pressing f2
map <F2> :echo 'Nous sommes le: ' . strftime('%c')<CR>

"echo current activity
"map <F3> :python /Users/marcpartensky/programs/python/repository-2020/isep-hyperplanning.py<CR>


"show the date when saving the buffer
" augroup SAVING
"     autocmd BufWritePost * echo strftime('%c')
" augroup END

"nnoremap <silent> <C-S> :<C-u>Update<CR>

":map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
":imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
:autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw
