.DEFAULT_GOAL := help

build: ## Builds docker images from the current project files
	docker-compose build

up-dev: ## Creates and starts the docker containers with development settings
	docker-compose -f docker-compose.yml -f dev.yml up -d
	docker-compose ps

up-prod: build ## Creates and starts the docker containers with production settings
	docker-compose -f docker-compose.yml -f prod.yml up -d
	docker-compose ps

down: ## Stops and removes the docker containers
	docker-compose down

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
