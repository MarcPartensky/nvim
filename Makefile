build:
	docker build . -t marcpartensky/nvim
build2:
	docker build . -f Dockerfile2 -t marcpartensky/nvim
build3:
	docker build . -f Dockerfile3 -t marcpartensky/nvim
push:
	docker push marcpartensky/nvim
run:
	docker run --name nvim -it marcpartensky/nvim
rm:
	docker kill nvim || docker rm nvim
