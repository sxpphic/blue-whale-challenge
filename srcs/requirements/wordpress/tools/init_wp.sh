#!/bin/bash

chmod 755 wordpress

#cd /var/www/html/$DOMAIN_NAME


# tenatar com mv
cp -R wordpress/* /var/www/html/

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

useradd nginx
chown -R nginx /var/www/html/

sed -i "s/database_name_here/wordpressdb/g" /var/www/html/wp-config.php
sed -i "s/username_here/$MYSQL_USER/g" /var/www/html/wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /var/www/html/wp-config.php

#sed -i "s/localhost/$DB_HOST/g" wp-config.php

/usr/sbin/php-fpm7.4 -F -R
