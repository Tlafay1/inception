wp core download --allow-root

mv /tmp/wp-config.php /var/www/html/wp-config.php

wp core install --url="tlafay.42.fr"  \
				--title="Blog Title" \
				--admin_user="tlafay" \
				--admin_password=$WP_PASS \
				--admin_email="blabla@blabla.fr"\
				--allow-root

php-fpm7.3 -F