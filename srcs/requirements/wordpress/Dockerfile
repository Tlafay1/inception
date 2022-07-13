FROM debian:buster

RUN apt-get update -y && \
	apt-get install php7.3 php-mysqli php-fpm wget -y

RUN mkdir -p /var/www/html && \
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp && \
	useradd -ms /bin/bash tlafay

COPY tools/wordpress_setup.sh /home/tlafay/wordpress_setup.sh

RUN chmod +x /home/tlafay/wordpress_setup.sh

USER tlafay

WORKDIR /home/tlafay

EXPOSE 9000

# ENTRYPOINT ["/home/tlafay/wordpress_setup.sh"]

CMD ["sleep", "infinity"]