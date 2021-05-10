FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install build-essential curl file git ruby-full locales --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/*

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

RUN useradd -m -s /bin/bash linuxbrew && \
    echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

USER linuxbrew
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

USER root
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"

RUN brew install --head neovim

# RUN apt-get update
# RUN apt-get install -y nodejs npm golang
# RUN apt-get install -y build-essential openssl curl wget cmake \
#     pkg-config libtool automake unzip git

# WORKDIR /tmp
# RUN wget https://github.com/neovim/neovim/archive/nightly.tar.gz
# RUN tar -xzvf nightly.tar.gz
# WORKDIR neovim-nightly
# RUN make
# RUN make install
# RUN rm -r /tmp/neovim-nightly

RUN pip3 install neovim

COPY . /nvim
WORKDIR /nvim

RUN nvim --headless \
	+"source vim-plug/plugins.vim" \
	+PlugInstall \
	+UpdateRemotePlugins \
	+qall
