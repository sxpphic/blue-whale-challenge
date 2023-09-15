#syntax=docker/dockerfile:1

FROM debian:bullseye

RUN	apt update && apt install -y --no-install-recommends \
	ca-certificates \
	php-fpm \
	curl \
	&& rm -rf /var/lib/apt/lists/*

ARG DOMAIN_NAME
ENV DOMAIN_NAME=${DOMAIN_NAME}

RUN	curl https://wordpress.org/latest.tar.gz -o latest.tar.gz \
	&& tar -xvzf latest.tar.gz

EXPOSE 9000
EXPOSE 3306

CMD mv /wordpress/* /var/www/html/${DOMAIN_NAME}/wordpress/ && sleep 1000