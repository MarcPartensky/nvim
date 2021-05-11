build:
	docker build .. -f Dockerfile -t marcpartensky/nvim
build_alpine:
	docker build .. -f Dockerfile_alpine -t marcpartensky/nvim:alpine
push:
	docker push marcpartensky/nvim
run:
	docker run --name nvim -it marcpartensky/nvim
	docker rm nvim
