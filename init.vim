"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
source $HOME/.vimrc
source $HOME/.config/nvim/vim-plug/plugins.vim

" plugin configs
" couldn't get this one to work
source $HOME/.config/nvim/plugins/vim-which-key.vim
source $HOME/.config/nvim/plugins/rnvimr.vim
source $HOME/.config/nvim/plugins/ranger.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/vim-hexokinase.vim
source $HOME/.config/nvim/plugins/vimtex.vim
source $HOME/.config/nvim/plugins/ultisnips.vim
source $HOME/.config/nvim/plugins/markdown-preview.vim
source $HOME/.config/nvim/plugins/r.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/floaterm.vim
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/lspsaga.vim
source $HOME/.config/nvim/plugins/vim-session.vim
source $HOME/.config/nvim/plugins/instant.vim
source $HOME/.config/nvim/plugins/ctrlp.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/i3config.vim
source $HOME/.config/nvim/plugins/vim-grammarous.vim
" luafile $HOME/.config/nvim/plugins/nvim-treesitter.lua
" fully file commented for now
" source $HOME/.config/nvim/plugins/auto-completion.vim

" general configs
source $HOME/.config/nvim/general/statusline.vim
source $HOME/.config/nvim/general/navigation.vim
source $HOME/.config/nvim/general/mapping.vim
source $HOME/.config/nvim/general/spell-checking.vim
source $HOME/.config/nvim/general/tabs.vim
source $HOME/.config/nvim/general/options.vim
source $HOME/.config/nvim/general/theme.vim

" themes
" source $HOME/.config/nvim/themes/material.vim
source $HOME/.config/nvim/themes/overwrite.vim
