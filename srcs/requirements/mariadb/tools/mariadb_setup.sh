#!/bin/bash

mysqld -umysql &\
        sleep 3 &&\
        echo "CREATE DATABASE $MYSQL_NAME;" | mysql &&\
        echo "CREATE USER '$MYSQL_USER'@'$MYSQL_CLIENT' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql &&\
        echo "GRANT ALL PRIVILEGES ON $MYSQL_NAME.* TO '$MYSQL_USER'@'$MYSQL_CLIENT';" | mysql &&\
        echo "FLUSH PRIVILEGES;" | mysql &&\
        echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_ROOT_PASSWORD');" | mysql

mysqld