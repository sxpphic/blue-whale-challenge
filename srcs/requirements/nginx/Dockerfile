# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y --no-install-recommends \
	openssl \
	nginx \
	curl \
	ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

COPY conf/example.com.conf /etc/nginx/sites-available/default

#COPY tools/. .
#COPY conf/. .

#ARG DOMAIN_NAME
#RUN chmod +x init_nginx.sh\
##	&& sed -i "s/example.com/${DOMAIN_NAME}/g" /etc/nginx/conf.d/${DOMAIN_NAME}.conf \
# tirar vim e curl

#EXPOSE 443

#CMD  ["./init_nginx"]

CMD [ "nginx", "-g", "daemon off;" ]