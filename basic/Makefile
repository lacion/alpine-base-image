.PHONY: default help build tag push

IMAGE_NAME := kitabisa/alpine-base-image

default: help

help:
	@echo 'Management commands for alpine-base-image:'
	@echo
	@echo 'Usage:'
	@echo '    make build           Build docker image.'
	@echo '    make tag             Tag local image for pushing.'
	@echo '    make push            Push tagged images to registry.'
	@echo

build:
	docker build -t $(IMAGE_NAME):local .

tag:  build
	docker tag $(IMAGE_NAME):local $(IMAGE_NAME):latest

push: tag
	docker push $(IMAGE_NAME):latest