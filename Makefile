build:
	docker build .. -f Dockerfile -t marcpartensky/nvim
push:
	docker push marcpartensky/nvim
run:
	docker run --name nvim -it marcpartensky/nvim
rm:
	docker kill nvim || docker rm nvim
