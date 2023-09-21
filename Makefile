NAME = sus

all: $(NAME)

up:
	mkdir -p ~/data/mariadb
	cd srcs && docker compose build
	cd srcs && docker compose up -d

down:
	cd srcs && docker compose down

$(NAME): up

re: down up

.PHONY: all up down re
	
