FROM debian:buster

RUN apt-get update && \
	apt install nginx -y && \
	apt-get clean && \
	service nginx start

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]