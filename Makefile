build:
	docker build . -t marcpartensky/nvim
build2:
	docker build . -f Dockerfile2 -t marcpartensky/nvim
build3:
	docker build . -f Dockerfile3 -t marcpartensky/nvim
push:
	docker push marcpartensky/nvim
run:
	docker run -it marcpartensky/nvim --name nvim
