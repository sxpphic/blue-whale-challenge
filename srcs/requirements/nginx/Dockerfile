# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y --no-install-recommends \
	openssl \
	nginx \
	&& rm -rf /var/lib/apt/lists/*

ARG DOMAIN_NAME

RUN mkdir -p /etc/nginx/certs && \
	 openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/certs/server.key \
	-out /etc/nginx/certs/server.crt -subj "/CN=${DOMAIN_NAME}"

COPY conf/nginx.conf /etc/nginx/http.d/default.conf

CMD [ "nginx", "-g", "daemon off;" ]