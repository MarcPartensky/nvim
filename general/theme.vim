"let g:deoplete#enable_at_startup = 1
let g:gruvbox_contrast_dark = 'hard'
"colorscheme gruvbox
 set background=dark

set completeopt-=preview
" let g:kite_auto_complete = 0
let g:jedi#force_py_version = 3
set expandtab
set shiftwidth=4
let g:airline_theme='one'
let g:one_allow_italics = 1 " I love italic for comments

set termguicolors
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"let ayucolor="light"  " for light version of theme
"colorscheme ayu
"colorscheme codedark
"colorscheme deep-space
colorscheme one
"colorscheme Atom

" Themes
"source $HOME/.config/nvim/themes/syntax.vim
"source $HOME/.config/nvim/themes/nvcode.vim
"source $HOME/.config/nvim/themes/airline.vim

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

