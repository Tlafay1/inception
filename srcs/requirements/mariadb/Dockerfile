FROM debian:buster

ARG MYSQL_ROOT_PASS
ARG MYSQL_PASSWORD

RUN apt-get update

RUN apt-get install -y mariadb-server

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start && \
	echo "CREATE DATABASE IF NOT EXISTS wordpress;\
	CREATE USER IF NOT EXISTS 'tlafay'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';\
	GRANT ALL PRIVILEGES ON wordpress.* TO 'tlafay'@'%';\
	FLUSH PRIVILEGES;\
	ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASS}';" | mysql

EXPOSE 3306

CMD ["mysqld"]