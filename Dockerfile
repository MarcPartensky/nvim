FROM debian

LABEL maintainer="Marc Partensky <marc.partensky@gmail.com"
ENV DEBIAN_FRONTEND=noninteractive

COPY . /root/.config/nvim

RUN apt-get update
RUN apt-get install -y git locales curl wget nodejs npm golang make python3-pip python3-dev --no-install-recommends
RUN localedef -i en_US -f UTF-8 en_US.UTF-8
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
RUN chmod u+x nvim.appimage
RUN ./nvim.appimage --appimage-extract
RUN ln -s /squashfs-root/AppRun /usr/bin/nvim
RUN npm i -g yarn
RUN pip3 install --user neovim
RUN rm -rf /var/lib/apt/lists/*
RUN ln -sf /usr/bin/node /usr/local/bin/node

WORKDIR /root
RUN touch .vimrc
RUN nvim \
	+"source /root/.config/nvim/vim-plug/plugins.vim" \
	+PlugUpdate \
	+CocInstall \
	+UpdateRemotePlugins \
	+qall

RUN nvim \
	+"source /root/.config/nvim/vim-plug/plugins.vim" \
	+CocUpdate \
	+qall

ENTRYPOINT ["nvim"]
