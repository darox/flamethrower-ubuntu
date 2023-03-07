DOCKER_USERNAME ?= dariomader
APPLICATION_NAME ?= flamethrower-ubuntu

GIT_HASH := $(shell git log --format="%H" -n 1)

build:
	docker build -t $(DOCKER_USERNAME)/$(APPLICATION_NAME):${GIT_HASH} - < Dockerfile

push:
	docker push $(DOCKER_USERNAME)/$(APPLICATION_NAME):${GIT_HASH}

release:
	docker build -t $(DOCKER_USERNAME)/$(APPLICATION_NAME):${GIT_HASH} - < Dockerfile
	docker push $(DOCKER_USERNAME)/$(APPLICATION_NAME):${GIT_HASH}
