# syntax=docker/dockerfile:1

FROM debian:bullseye
# install mariadb and run
RUN apt update && apt install -y mariadb-server && apt clean && rm -rf /var/lib/apt/lists/* && chmod -R 755 /var/lib/mysql/

COPY ./conf/init_mariadb.sh .
RUN chmod +x init_mariadb.sh && ./init_mariadb.sh
EXPOSE 3306

ENTRYPOINT ["mariadbd"]
