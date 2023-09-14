NAME = sus

all: $(NAME)

maria:
	docker build -t mariadb srcs/requirements/mariadb
rm_maria:
	docker image rm -f mariadb

delete_all:
#	docker container rm -f $(docker container ls -aq)
#	docker image rm -f $(docker image ls -aq)

up: #maria 
	cd srcs && docker compose build
	cd srcs && docker compose up #-d


down:
	cd srcs && docker compose down

$(NAME): up

re: down up

.PHONY: all maria rm_maria up down re
	
