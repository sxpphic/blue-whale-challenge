NAME = sus

all: $(NAME)

maria:
	docker build -t mariadb srcs/requirements/mariadb
rm_maria:
	docker image rm -f mariadb

up: maria 
	cd srcs && docker compose --env-file .env up -d

down:
	cd srcs && docker compose down



$(NAME): up
	
