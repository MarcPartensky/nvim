build:
	docker build .. -f Dockerfile -t marcpartensky/nvim
build_alpine:
	docker build .. -f Dockerfile_alpine -t marcpartensky/nvim:alpine
push:
	docker push marcpartensky/nvim
run:
	docker run --name nvim -it marcpartensky/nvim
	docker rm nvim
setup:
	ln -sf /usr/bin/node /usr/local/bin/node
	nvim \
		+"source ${HOME}/.config/nvim/vim-plug/plugins.vim" \
		+CocInstall \
		+PlugUpdate \
		+UpdateRemotePlugins \
		+qall
