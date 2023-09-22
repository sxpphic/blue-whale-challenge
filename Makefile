NAME = sus

all: $(NAME)

up:
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
	cd srcs && docker compose build
	cd srcs && docker compose up -d

down:
	cd srcs && docker compose down

$(NAME): up

re: down up

.PHONY: all up down re
	
