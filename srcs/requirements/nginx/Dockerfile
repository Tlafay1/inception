FROM debian:buster

RUN apt-get update && \
	apt install nginx openssl -y

COPY conf/default /etc/nginx/sites-enabled/default

RUN openssl req -x509 -nodes \
	-days 365 -newkey rsa:2048 -keyout \
	/etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=FR/O=krkr/OU=Domain Control Validated/CN=tlafay.42.fr"

CMD ["nginx", "-g", "daemon off;"]