#syntax=docker/dockerfile:1

FROM debian:bullseye

RUN	apt update && apt install -y --no-install-recommends \
	ca-certificates \
	php-fpm \
	curl \
	&& rm -rf /var/lib/apt/lists/*

COPY tools/init_wp.sh .

ARG DOMAIN_NAME

RUN	curl https://wordpress.org/latest.tar.gz -o latest.tar.gz \
	&& tar -xvzf latest.tar.gz \
	&& rm latest.tar.gz \
	&& chmod +x init_wp.sh \
	&& mkdir -p /run/php/
	#&& mkdir -p /var/www/html/${DOMAIN_NAME} \

EXPOSE 9000

CMD ["./init_wp.sh"]