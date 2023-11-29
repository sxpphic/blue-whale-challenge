IS_ARCH = $(shell uname -r | grep arch)

ifeq ($(IS_ARCH), 0)
	COMPOSE_CMD = docker-compose
else
	COMPOSE_CMD = docker compose
endif


all: up

up:
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
	$(COMPOSE_CMD) -f ./srcs/docker-compose.yml build
	$(COMPOSE_CMD) -f ./srcs/docker-compose.yml up -d

down:
	$(COMPOSE_CMD) -f ./srcs/docker-compose.yml down
	$(COMPOSE_CMD) -f ./srcs/docker-compose.yml down

stop:
	$(COMPOSE_CMD) -f ./srcs/docker-compose.yml stop

start:
	$(COMPOSE_CMD) -f ./srcs/docker-compose.yml start

rmi:
	docker image prune -af

rmc:
	docker container prune -f

statusc:
	docker ps

statusi:
	docker image ls

fclean:
	clear && cd ./srcs && $(COMPOSE_CMD) down && docker system prune --all --force --volumes

re: down up

.PHONY: all up down re start stop
