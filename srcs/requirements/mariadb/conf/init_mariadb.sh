#!bin/bash

service mariadb start
mariadb -e "CREATE DATABASE db;"

#chown -R mysql:mysql /var/lib/mysql/db

mysqladmin status

# CONFIGURE DB USERS
mariadb -e "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';"
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
service mariadb stop
