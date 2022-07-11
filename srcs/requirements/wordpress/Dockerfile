FROM debian:buster

RUN apt-get update -y && \
	apt-get install wget unzip gnupg2 ca-certificates \
	apt-transport-https software-properties-common php \
	libapache2-mod-php php-pear php-cgi php-common \
	php-mbstring php-zip php-net-socket \
	php-gd php-xml-util php-gettext \
	php-mysql php-bcmath -y && mkdir -p /var/www/html && \
	wget https://wordpress.org/latest.zip -P /var/www/html/ && \
	unzip /var/www/html/latest.zip && \
	rm /var/www/html/latest.zip

CMD ["sleep", "infinity"]