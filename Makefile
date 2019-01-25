IMAGE_NAME:=$(if $(IMAGE_NAME),$(IMAGE_NAME),schroedan/php)
TAG_NAME:=$(if $(TAG_NAME),$(TAG_NAME),local)
VERSION:=$(if $(VERSION),$(VERSION),7.3)

.PHONY: default
default: lint build

.PHONY: lint
lint:
	@echo "Linting ${VERSION}/Dockerfile"
	@docker run --rm -i hadolint/hadolint < ${VERSION}/Dockerfile

.PHONY: build
build:
	@echo 'Building Docker image ${IMAGE_NAME}:${TAG_NAME}'
	@docker build --force-rm --no-cache --tag ${IMAGE_NAME}:${TAG_NAME} ${VERSION}
