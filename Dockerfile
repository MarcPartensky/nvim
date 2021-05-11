FROM ubuntu

LABEL maintainer="Marc Partensky <marc.partensky@gmail.com"
ENV DEBIAN_FRONTEND=noninteractive

COPY . /root/.config/nvim

RUN apt-get update
RUN apt-get install -y git locales curl wget nodejs npm golang make python3-dev --no-install-recommends
RUN localedef -i en_US -f UTF-8 en_US.UTF-8
RUN npm i -g yarn
RUN curl https://bootstrap.pypa.io/get-pip.py | python3
RUN python3 -m pip install --user neovim
# RUN rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
RUN tar xzvf nvim-linux64.tar.gz
RUN chmod +x nvim-linux64/bin/nvim
RUN mv nvim-linux64/bin/nvim /usr/local/bin/nvim
RUN mv nvim-linux64/share/* /usr/local/share
RUN mv nvim-linux64/lib/* /usr/local/lib
RUN rm -d nvim-linux64/* nvim-linux64

WORKDIR /root
RUN touch .vimrc

RUN nvim \
	+"source /root/.config/nvim/vim-plug/plugins.vim" \
	+"CocInstall -sync" \
	+PlugUpdate \
	+UpdateRemotePlugins \
	+qall

ENTRYPOINT nvim
