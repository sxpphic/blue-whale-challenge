#!/bin/bash

chmod 755 wordpress

#cd /var/www/html/$DOMAIN_NAME

cp -R wordpress /var/www/html/$DOMAIN_NAME/

cp /var/www/html/$DOMAIN_NAME/wordpress/wp-config-sample.php /var/www/html/$DOMAIN_NAME/wordpress/wp-config.php

useradd nginx
chown -R nginx /var/www/html/$DOMAIN_NAME/

sed -i "s/database_name_here/wordpressdb/g" /var/www/html/$DOMAIN_NAME/wordpress/wp-config.php
sed -i "s/username_here/$MYSQL_USER/g" /var/www/html/$DOMAIN_NAME/wordpress/wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /var/www/html/$DOMAIN_NAME/wordpress/wp-config.php

#sed -i "s/localhost/$DB_HOST/g" wp-config.php

/usr/sbin/php-fpm7.4 -F -R
