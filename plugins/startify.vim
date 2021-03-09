autocmd BufEnter * if !exists('t:startified') | Startify | let t:startified = 1 | endif
