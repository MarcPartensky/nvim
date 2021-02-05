"toggle the nerdtree filemanager
" toggle file manager
" map <C-o> :NERDTreeToggle<CR>
map <C-o> :CocCommand explorer<CR>

" comment
nmap <C-_> :Commentary<CR>
vmap <C-_>   <Plug>Commentary<CR>gv

"show the date when pressing f2
map <F2> :echo 'Nous sommes le: ' . strftime('%c')<CR>

" execute current file
map <C-i> :!"%:p"
map <C-y> :!pylint %

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
"map <F3> :python /Users/marcpartensky/programs/python/repository-2020/isep-hyperplanning.py<CR>


"show the date when saving the buffer
" augroup SAVING
"     autocmd BufWritePost * echo strftime('%c')
" augroup END

"nnoremap <silent> <C-S> :<C-u>Update<CR>

":map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
":imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"

autocmd filetype python map <buffer> <f9> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>
:autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw
