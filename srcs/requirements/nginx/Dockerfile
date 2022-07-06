FROM debian:buster

RUN apt-get update && \
	apt install nginx -y && \
	apt-get clean && \
	service nginx start

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]