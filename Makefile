build:
	sudo docker build -t solus-build .

run:
	sudo docker run -it \
	--volume=/tmp:/home \
	--name solus-build \
	solus-build:latest \
	bash

remove:
	sudo docker rmi solus-build

help:
	@echo 'build  -> Build docker image'
	@echo 'run    -> Run the docker image'
	@echo 'remove -> Remove docker image'
