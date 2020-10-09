"auto install vim-plug
 if empty(glob('~/.vim/autoload/plug.vim'))
 silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 autocmd vimenter * pluginstall --sync | source $myvimrc
 endif
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.config/nvim/bundle')
"themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'christianchiarulli/nvcode.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'gregsexton/Atom'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'rakr/vim-one' "inspired from atom

"fade inactive buffers
Plug 'TaDaa/vimade'

"floating window inside terminal
Plug 'voldikss/vim-floaterm'

"file manager
Plug 'preservim/nerdtree'

"ranger in floating window
Plug 'kevinhwang91/rnvimr'

"surround ( [ { ' double quotes
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

"status line
Plug 'vim-airline/vim-airline'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"show trailing spaces
Plug 'ntpeters/vim-better-whitespace'

"comments macro
Plug 'scrooloose/nerdcommenter'

"keybindings in popup
Plug 'liuchengxu/vim-which-key'

"multiple cursors
Plug 'terryma/vim-multiple-cursors'

"unix commands
Plug 'tpope/vim-eunuch'

"lsp autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"run current file
Plug 'thinca/vim-quickrun'

"unix filter for command-line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"custom start screen
Plug 'mhinz/vim-startify'

"better search
Plug 'justinmk/vim-sneak'

"interactive scratchpad
Plug 'metakirby5/codi.vim'

"window manager
Plug 'junegunn/goyo.vim'

"live html
Plug 'turbio/bracey.vim'

"close tags for markup languages
Plug 'alvan/vim-closetag'

"replace closing tags when editing opening ones
Plug 'AndrewRadev/tagalong.vim'

"Colors coloring
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

"terminalception
Plug 'kassio/neoterm'

"bottom line to show vim mode
Plug 'itchyny/lightline.vim'

"snippets for html
Plug 'mattn/emmet-vim'

Plug 'skywind3000/vim-preview'

"add icons
Plug 'ryanoasis/vim-devicons'

"add image preview in terminal (not working for now)
Plug 'ashisha/image.vim'

"swap between windows
Plug 'wesQ3/vim-windowswap'

"webapi
Plug 'mattn/webapi-vim'

"smooth scroll with <C-d>
Plug 'psliwka/vim-smoothie'

"follow you with cd
Plug 'airblade/vim-rooter'

"latex support for vim
Plug 'lervag/vimtex'

"snippets maker
Plug 'sirver/ultisnips'

""kite plugin (very aggressive plugin)
"Plug 'kiteco/vim-plugin'

"Basic autocompletion
" Plug 'https://github.com/Valloric/YouCompleteMe.git'
" Plug 'Valloric/YouCompleteMe'
"
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'

"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/deoplete-lsp'

"Plug 'neovim/nvim-lsp'

"personal wiki for vim
"Plug 'vimwiki/vimwiki'

call plug#end()
