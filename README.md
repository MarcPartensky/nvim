# My neovim config

This is my neovim config that i use on my mac.

## Installation (on Unix like systems)
### Install neovim
Official neovim website: <a>https://neovim.io/</a>

### Clone the project
```bash
cd ~/.config
git clone https://github.com/MarcPartensky/nvim.git
cd nvim
```

### Install the plugins
```bash
nvim vim-plug/plugins.vim 
```
Then type the following:
* **:source %**
* **:PlugInstall**

**That's it!**

## Project files tree

```tree
├── LICENSE
├── README.md
├── bundle
│   ├── Atom
│   ├── auto-pairs
│   ├── ...
├── general
│   ├── mapping.vim
│   ├── navigation.vim
│   ├── ...
├── init.vim
├── pack
├── plugins
│   ├── coc.vim
│   ├── nerdtree.vim
│   ├── ...
├── themes
│   ├── airline.vim
│   ├── atom.vim
│   ├── ...
└── vim-plug
    └── plugins.vim
```

This is how the folder should look like at the end.

## Congratulations!
If you are done, congratulations! otherwise add an issue and I will check it out!

