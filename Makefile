default: help

IMAGE_NAME   := lacion/alpine-base-image

.PHONY: help
help:
	@echo 'Management commands for alpine-base-image:'
	@echo
	@echo 'Usage:'
	@echo '    make build           Build docker image.'
	@echo '    make tag             tag local image for pushing'
	@echo '    make push            Push tagged images to registry'
	@echo

.PHONY: build
build:
	docker build -t $(IMAGE_NAME):local .

.PHONY: tag
tag:  build
	docker tag $(IMAGE_NAME):local $(IMAGE_NAME):latest

.PHONY: push
push: tag
	docker push $(IMAGE_NAME):latest