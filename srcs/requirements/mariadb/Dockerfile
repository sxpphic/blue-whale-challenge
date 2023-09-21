# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y --no-install-recommends \
	mariadb-server \
	&& apt clean \
	&& rm -rf /var/lib/apt/lists/* \
	&& chmod -R 755 /var/lib/mysql/

COPY ./tools/init_mariadb.sh .

RUN chmod +x init_mariadb.sh

EXPOSE 3306

VOLUME [ "/var/lib/mysql" ]

ENTRYPOINT ["./init_mariadb.sh"]