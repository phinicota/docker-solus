build:
	docker build -t solus-build .

run:
	docker run --rm -it \
	--volume=/tmp:/home \
	--name solus-build \
	solus-build:latest \
	bash

remove:
	docker rm solus-build

help:
	@echo 'build  -> Build docker image'
	@echo 'run    -> Run the docker image'
	@echo 'remove -> Remove docker image'
