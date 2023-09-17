# syntax=docker/dockerfile:1

FROM debian:bullseye
RUN apt update && apt install -y --no-install-recommends \
	openssl \
	nginx \
	vim \
	curl \
	php-fpm \
	ca-certificates \
	wget \
	&& rm -rf /var/lib/apt/lists/*

ARG DOMAIN_NAME
ENV DOMAIN_NAME=${DOMAIN_NAME}
ARG MYSQL_USER
ENV MYSQL_USER $MYSQL_USER
ARG MYSQL_PASSWORD
ENV MYSQL_PASSWORD $MYSQL_PASSWORD

COPY conf/. .

RUN chmod +x wp_conf.sh \
	&& ./wp_conf.sh \
	&& mv wp-config.php /var/www/html/${DOMAIN_NAME}/wordpress/ \
	&& mv nginx.conf /etc/nginx/conf.d/${DOMAIN_NAME}.conf

# tirar vim e curl
EXPOSE 443
EXPOSE 9000

CMD  ["nginx", "-g", "daemon off;"]