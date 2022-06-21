NODE_PATH = `which node`

build:
	docker build .. -f Dockerfile -t marcpartensky/nvim
build_alpine:
	docker build .. -f Dockerfile_alpine -t marcpartensky/nvim:alpine
push:
	docker push marcpartensky/nvim
run:
	docker run --name nvim -it marcpartensky/nvim
	docker rm nvim
setup: node python plugins
python:
	python -m ensurepip
	pip install neovim
node:
	sudo ln -sf ${NODE_PATH} /usr/local/bin/node
plugins:
	nvim \
		+"source ${HOME}/.config/nvim/vim-plug/plugins.vim" \
		+CocInstall \
		+PlugUpdate \
		+UpdateRemotePlugins \
		+qall
.PHONY: plugins
