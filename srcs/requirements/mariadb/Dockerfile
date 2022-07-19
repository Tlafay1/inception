FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

RUN service mysql start

# COPY tools/mariadb_setup.sh /tmp/mariadb_setup.sh

COPY tools/50-server.dnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

# ENTRYPOINT ["sh", "/tmp/mariadb_setup.sh"]

CMD ["mysqld"]
