#syntax=docker/dockerfile:1

FROM debian:bullseye

RUN	apt update && apt install -y --no-install-recommends \
	php-fpm \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 9000
EXPOSE 3306