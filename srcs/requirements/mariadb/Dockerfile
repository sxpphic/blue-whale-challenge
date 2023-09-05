# syntax=docker/dockerfile:1

FROM debian:bullseye
RUN apt update && apt install -y mariadb-server

EXPOSE 3307

CMD [ "mysqld" ]
