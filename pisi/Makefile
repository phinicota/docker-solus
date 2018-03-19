build:
	docker build -t solus-pisi .

run:
	docker run -it \
	--volume=/tmp/docker:/home \
	--name solus-pisi \
	solus-pisi:latest \
	bash

remove:
	docker rm solus-pisi

help:
	@echo 'build  -> Build docker image'
	@echo 'run    -> Run the docker image'
	@echo 'remove -> Remove docker file'