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
COPY conf/. .

ARG DOMAIN_NAME

RUN chmod +x init_nginx.sh\
	&& mv example.com.conf /etc/nginx/conf.d/${DOMAIN_NAME}.conf \
	&& sed -i "s/example.com/${DOMAIN_NAME}/g" /etc/nginx/conf.d/${DOMAIN_NAME}.conf \
	&& service nginx stop
# tirar vim e curl

EXPOSE 443

#CMD  ["./init_nginx"]

CMD [ "nginx", "-g", "daemon off;" ]