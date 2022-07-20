FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY tools/test.sql /tmp/test.sql

EXPOSE 3306

RUN service mysql start &&\
	echo "CREATE DATABASE IF NOT EXISTS wordpress;\
	CREATE USER IF NOT EXISTS 'tlafay'@'%' IDENTIFIED BY '12345';\
	GRANT ALL PRIVILEGES ON wordpress.* TO 'tlafay'@'%';\
	FLUSH PRIVILEGES;\
	ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';" | mysql < /tmp/test.sql

CMD ["mysqld"]
