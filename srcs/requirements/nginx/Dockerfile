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

COPY tools/. .

#RUN chmod +x wp_conf.sh \
#	&& ./wp_conf.sh \
#	&& mv wp-config.php /var/www/html/${DOMAIN_NAME}/wordpress/
#	&& mv nginx.conf /etc/nginx/conf.d/${DOMAIN_NAME}.conf \
#	&& service nginx stop

# tirar vim e curl
#EXPOSE 443
#EXPOSE 9000

CMD  ["nginx", "-g", "daemon off;"]