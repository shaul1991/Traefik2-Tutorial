TRAEFIK_DIR ?= cd traefik
TRAEFIK_COMPOSE ?= docker-compose -p traefik

.PHONY: start
start: erase build up ## clean current environment, recreate dependencies and spin up again

.PHONY: rebuild
rebuild: start ## same as start

.PHONY: erase
erase: ## stop and delete containers, clean volumes.
		$(TRAEFIK_DIR) && $(TRAEFIK_COMPOSE) stop
		$(TRAEFIK_DIR) && $(TRAEFIK_COMPOSE) rm -v -f

.PHONY: build
build: ## build environment and initialize composer and project dependencies
		$(TRAEFIK_DIR) && $(TRAEFIK_COMPOSE) build

.PHONY: up
up: ## spin up environment
		$(TRAEFIK_DIR) && $(TRAEFIK_COMPOSE) up -d