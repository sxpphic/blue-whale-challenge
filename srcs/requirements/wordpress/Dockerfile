#syntax=docker/dockerfile:1

FROM debian:bullseye

RUN	apt update && apt install -y --no-install-recommends \
	ca-certificates \
	php-fpm \
	php-mysql \
	curl \
	&& rm -rf /var/lib/apt/lists/*

COPY tools/init_wp.sh .
RUN chmod +x init_wp.sh

#RUN	curl https://wordpress.org/latest.tar.gz -o latest.tar.gz \
#	&& tar -xvzf latest.tar.gz \
#	&& rm latest.tar.gz \
#	&& mkdir -p /run/php/
	#&& mkdir -p /var/www/html/${DOMAIN_NAME} \

CMD ["./init_wp.sh"]