"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
source $HOME/.vimrc
source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/general/statusline.vim
source $HOME/.config/nvim/general/navigation.vim
source $HOME/.config/nvim/general/theme.vim
source $HOME/.config/nvim/general/mapping.vim
source $HOME/.config/nvim/general/options.vim


"couldn't get this one to work
"source $HOME/.config/nvim/plugins/vim-which-key.vim
source $HOME/.config/nvim/plugins/rnvimr.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/vim-hexokinase.vim
source $HOME/.config/nvim/plugins/vimtex.vim
source $HOME/.config/nvim/plugins/ultisnips.vim

"command -nargs=0 -bar Update if &modified
                           "\|    if empty(bufname('%'))
                           "\|        browse confirm write
                           "\|    else
                           "\|        confirm write
                           "\|    endif
                           "\|endif



