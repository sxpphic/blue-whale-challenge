#syntax=docker/dockerfile:1

FROM debian:bullseye

RUN	apt update && apt install -y --no-install-recommends \
	php-fpm \
	wget \
	&& rm -rf /var/lib/apt/lists/*

ARG DOMAIN_NAME
#ENV DOMAIN_NAME=${DOMAIN_NAME}

# n precisa do mkdir pq o compose já cria 
RUN	mkdir -p /var/www/html/${DOMAIN_NAME} \
	&& cd /var/www/html/${DOMAIN_NAME} \
	&& wget https://wordpress.org/latest.tar.gz \
	&& tar -xvzf latest.tar.gz \
	chown -R nginx: /var/www/html/${DOMAIN_NAME}/
EXPOSE 9000
EXPOSE 3306

CMD [""]