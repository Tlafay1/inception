FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

RUN service mysql start

CMD ["mysqld"]