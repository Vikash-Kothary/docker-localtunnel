#!make
#@ Makefile for docker-localtunnel

include images/.env
export

.PHONY: help init build run stop clean

#@ Commands:
#@ - help: Show all commands.
help:
	@fgrep -h "#@" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/#@ //'

#@ - init: Login into the Docker registry
init:
	docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD} https://${DOCKER_REGISTRY}
