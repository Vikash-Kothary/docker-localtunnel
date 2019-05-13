#!make
#@ Makefile for docker-localtunnel

include images/.env
export

#@ Commands:
.PHONY: help init build run stop clean

%: $-localtunnel
	@true

#@ - help-localtunnel: Show all commands.
help-localtunnel:
	@fgrep -h "#@" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/#@ //'

#@ - init-localtunnel: Login into the Docker registry
init-localtunnel:
	docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD} https://${DOCKER_REGISTRY}

#@ - build-localtunnel: Login into the Docker registry
build-localtunnel:
	cd images/ && \
	docker-compose build

#@ - run-localtunnel: Login into the Docker registry
run-localtunnel:
	@cd examples/ && \
	docker-compose up -d



