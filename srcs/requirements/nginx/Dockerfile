# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y --no-install-recommends \
	openssl \
	nginx \
	vim \
	curl \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 443

CMD  ["nginx", "-g", "daemon off;"]