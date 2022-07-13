FROM debian:buster

RUN apt-get update -y && \
	apt-get install php7.3 php-mysqli php-fpm wget -y

RUN mkdir -p /var/www/html && \
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

CMD ["sleep", "infinity"]