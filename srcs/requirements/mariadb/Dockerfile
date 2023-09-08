# syntax=docker/dockerfile:1

FROM debian:bullseye
RUN apt update && apt install -y mariadb-server 
RUN service mariadb restart

EXPOSE 3306

CMD mariadbd
