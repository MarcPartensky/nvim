FROM ubuntu

LABEL maintainer="Marc Partensky <marc.partensky@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

COPY . /root/.config/nvim

# RUN apt-get update && \
#     apt-get install build-essential curl file git ruby-full locales --no-install-recommends -y

RUN apt-get update
RUN apt-get install -y git locales curl wget nodejs npm golang make --no-install-recommends
RUN localedef -i en_US -f UTF-8 en_US.UTF-8
RUN npm i -g yarn

# RUN apt-get install fuse libfuse2 git python3-pip ack-grep -y
# RUN rm -rf /var/lib/apt/lists/*

# RUN apt install -y fuse kmod
# RUN modprobe fuse
# RUN groupadd fuse

# RUN user="$(whoami)"
# RUN usermod -a -G fuse $user

# RUN wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
# RUN chmod +x nvim
# RUN chown root:root nvim
# RUN mv nvim /usr/bin

# RUN curl -O https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

# RUN chmod +x nvim.appimage
# RUN ./nvim.appimage --appimage-extract-and-run
# RUN ./squashfs-root/usr/bin/nvim

# RUN pip3 install neovim
# RUN ./nvim.appimage --appimage-extract-and-run --headless \
# 	+"source vim-plug/plugins.vim" \
# 	+PlugInstall \
# 	+UpdateRemotePlugins \
# 	+qall

WORKDIR /tmp

RUN wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
RUN tar xzvf nvim-linux64.tar.gz
RUN chmod +x nvim-linux64/bin/nvim
RUN ln -s /tmp/nvim-linux64/bin/nvim /usr/bin/nvim

WORKDIR /root

RUN nvim --headless \
	+"source /root/.config/nvim/vim-plug/plugins.vim" \
	+PlugInstall \
	+UpdateRemotePlugins \
	+qall
