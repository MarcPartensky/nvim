# My neovim config

This is my personal neovim config, feel free to give it a try with docker and fork it to your needs.

## Run with docker
```
docker run -it --name nvim marcpartensky/nvim
```

## Installation manually (on Unix like systems)

### Install neovim nightly
(Install the latest release)[https://github.com/neovim/neovim/releases]

> You can also check the official website: (Official neovim website)[https://neovim.io]

### Clone the project
```sh
git clone https://github.com/MarcPartensky/nvim.git ~/.config/nvim
```

### Install the plugins
```sh
nvim ~/.config/nvim/vim-plug/plugins.vim 
```

Then type the following:
* **:source %**
* **:PlugInstall**

**That's it!**

### Build with docker yourself
If you do not trust docker hub images you can build the image you can check the dockerfile and build the image yourself.
```
docker build ~/.config -t marcpartensky/nvim
```
or 
```
cd ~/.config/nvim
make build
```

#### Finally you can run the image with:
```
docker run -it --name nvim marcpartensky/nvim
```
or even
```
make run
```

## Project file tree

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
If you are done, congratulations! otherwise add an issue if you find one and I will check it out!
Pull requests are also welcome!
