#!/bin/bash

chown -R mysql:mysql /var/lib/mysql

service mariadb restart

mariadb << EOF
CREATE DATABASE wordpressdb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON wordpressdb.* TO '$MYSQL_USER'@'localhost';

CREATE USER 'lilith'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
GRANT ALL PRIVILEGES ON *.* to 'lilith'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;
EXIT
EOF

service mariadb stop

mariadbd