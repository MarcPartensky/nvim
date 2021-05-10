build:
	docker build . -t marcpartensky/nvim
push:
	docker push marcpartensky/nvim
run:
	docker run -it marcpartensky/nvim --name nvim
