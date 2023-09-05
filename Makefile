NAME = sus

all: $(NAME)

maria:
	docker build -t mariadb srcs/requirements/mariadb
rm_maria:
	docker image rm -f mariadb


$(NAME): maria
	cd srcs && docker compose --env-file .env up
	
