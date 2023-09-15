# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y --no-install-recommends \
	openssl \
	nginx \
	vim \
	curl \
	&& rm -rf /var/lib/apt/lists/*

# tirar vim e curl
EXPOSE 443
EXPOSE 9000

CMD  ["nginx", "-g", "daemon off;"]