wp core download --allow-root

wp core config --dbhost=mariadb \
			--dbname=wordpress \
			--dbuser=tlafay \
			--dbpass=tlafaypass \
			--allow-root

wp core install --url="localhost"  \
				--title="Blog Title" \
				--admin_user="tlafay" \
				--admin_password="inception" \
				--admin_email="blabla@blabla.fr"\
				--allow-root

php-fpm7.3 -F