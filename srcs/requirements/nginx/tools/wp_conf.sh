#!/bin/bash

mkdir -p /var/www/html/$DOMAIN_NAME
cd /var/www/html/$DOMAIN_NAME
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm latest.tar.gz

useradd nginx
#groupadd nginx
chown -R nginx /var/www/html/$DOMAIN_NAME/

