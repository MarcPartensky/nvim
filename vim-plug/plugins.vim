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
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'gregsexton/Atom'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'rakr/vim-one' "inspired from atom
Plug 'ntk148v/vim-horizon'
Plug 'arzg/vim-colors-xcode'

"fade inactive buffers
Plug 'TaDaa/vimade'

"floating window inside terminal
Plug 'voldikss/vim-floaterm'

"file manager (using coc-explorer)
" Plug 'preservim/nerdtree'

"ranger in floating window
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"surround ( [ { ' double quotes
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

"status line
Plug 'vim-airline/vim-airline'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

"show trailing spaces
Plug 'ntpeters/vim-better-whitespace'

"comments macro
"Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

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
" Plug 'justinmk/vim-sneak'

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

"colorize vim devicons using current colorscheme
Plug 'bryanmylee/vim-colorscheme-icons'

"add image preview in terminal (not working for now)
"Plug 'ashhisha/image.vim'

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
" Plug 'sirver/ultisnips'

"vim-snippets
Plug 'honza/vim-snippets'

"disable highlighting when done searching
Plug 'romainl/vim-cool'

"R development
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

"Grammar correction
Plug 'rhysd/vim-grammarous'

" Git commands
Plug 'tpope/vim-fugitive'

"Finder for vim
Plug 'kien/ctrlp.vim'

" Add syntax highlighting for jsx
Plug 'maxmellon/vim-jsx-pretty'

" Autopep8
Plug 'tell-k/vim-autopep8'

" Plantuml (browser preview)
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'

" Plantuml (in-code preview)
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'


" Collaboration for vim
" Collaboration editor agnostic
Plug 'floobits/floobits-neovim'
" Deprecated
" Plug 'FredKSchott/oVim'

" Snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'zchee/deoplete-jedi'


" C# omni completion since coc is not mature enough
Plug 'OmniSharp/Omnisharp-vim'

" Fuzzy finder over lists
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Syntax hightlighting
" Plug 'sheerun/vim-polyglot'

" Better synxtax hightlighting available for neovim 0.5
" Plug 'tree-sitter/tree-sitter'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Line search highlight
" Plug 'unblevable/quick-scope'

"embed vim in a browser
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

"kite plugin (very aggressive plugin)
"Plug 'kiteco/vim-plugin'

"Basic autocompletion
" Plug 'https://github.com/Valloric/YouCompleteMe.git'
" Plug 'Valloric/YouCompleteMe'
"

"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/deoplete-lsp'

"Plug 'neovim/nvim-lsp'

"personal wiki for vim
"Plug 'vimwiki/vimwiki'

call plug#end()
