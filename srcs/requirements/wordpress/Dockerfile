FROM debian:buster

RUN apt-get update -y && \
	mkdir /run/php && \
	apt-get install php7.3 php-mysqli php-fpm wget -y

RUN mkdir -p /var/www/html && \
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp && \
	useradd -ms /bin/bash tlafay

COPY tools/wordpress_setup.sh /tmp/wordpress_setup.sh


WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/wordpress_setup.sh"]