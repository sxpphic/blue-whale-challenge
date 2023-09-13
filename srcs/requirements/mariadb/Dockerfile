# syntax=docker/dockerfile:1

FROM debian:bullseye
# install mariadb and run
RUN apt update && apt install -y mariadb-server && apt clean && rm -rf /var/lib/apt/lists/*
RUN service mariadb restart && mariadb -e "CREATE DATABASE db"

EXPOSE 3306

CMD mariadbd
