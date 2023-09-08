# syntax=docker/dockerfile:1

FROM debian:bullseye
RUN apt update && apt install -y mariadb-server && apt clean && rm -rf /var/lib/apt/lists/*
RUN service mariadb restart

EXPOSE 3306

CMD mariadbd
