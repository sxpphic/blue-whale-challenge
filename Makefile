
all: up

up:
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
	docker compose -f ./srcs/docker-compose.yml build
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

start:
	docker compose -f ./srcs/docker-compose.yml start

rmi:
	docker image prune -af

rmc:
	docker container prune -f

statusc:
	docker ps

statusi:
	docker image ls

fclean:
	clear && cd ./srcs && docker compose down && docker system prune --all --force --volumes

re: down up

.PHONY: all up down re start stop