#!/bin/bash

#change db ownder from root to mysql
chown mysql:mysql /var/lib/mysql/wordpressdb

#init mariadb service
mariadbd