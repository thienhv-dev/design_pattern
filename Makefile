.PHONY: help build up down restart logs

help: ## Hiển thị help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build containers
	docker-compose build

up: ## Start containers
	docker-compose up -d

down: ## Stop containers
	docker-compose down

restart: ## Restart containers
	docker-compose restart

logs: ## View logs
	docker-compose logs -f

shell: ## Access PHP container shell
	docker-compose exec app bash

mysql: ## Access MySQL
	docker-compose exec db mysql -u laravel_user -p laravel_db