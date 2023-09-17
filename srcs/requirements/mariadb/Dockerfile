# syntax=docker/dockerfile:1

FROM debian:bullseye
# install mariadb and run
RUN apt update && apt install -y --no-install-recommends \
	mariadb-server \
	&& apt clean \
	&& rm -rf /var/lib/apt/lists/* \
	&& chmod -R 755 /var/lib/mysql/

COPY ./conf/init_mariadb.sh .
COPY ./conf/config_db.sh .

ARG MYSQL_ROOT_PASSWORD
ENV MYSQL_ROOT_PASSWORD $MYSQL_ROOT_PASSWORD
ARG MYSQL_USER
ENV MYSQL_USER $MYSQL_USER
ARG MYSQL_PASSWORD
ENV MYSQL_PASSWORD $MYSQL_PASSWORD

RUN chmod +x config_db.sh init_mariadb.sh \
	&& service mariadb restart \
	&& ./config_db.sh

EXPOSE 3306

CMD ["./init_mariadb.sh"]
