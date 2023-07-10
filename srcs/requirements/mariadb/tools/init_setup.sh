#!/bin/sh

service mysql start;

#MYSQL_ROOT_PASSWORD='bORN2BEROOT.'
#MYSQL_USER=mysql
#MYSQL_PASSWORD='Born2beroot.'
#MYSQL_DATABASE=wordpress

if [ ! -f "/db_wp_created" ]
then
	echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;" > create_wp_db.sql
	echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" >> create_wp_db.sql
	echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" >> create_wp_db.sql
	echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;" >> create_wp_db.sql
	echo "FLUSH PRIVILEGES;" >> create_wp_db.sql

	mysql < create_wp_db.sql

	kill $(cat /var/run/mysqld/mysqld.pid)
	touch /db_wp_created
	chmod 444 /db_wp_created
fi

mysqld_safe
