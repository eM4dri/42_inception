#!/bin/sh

service mysql start;

# touch /var/run/mysqld/mysqld.pid
# touch /var/run/mysqld/mysqld.sock
# chmod 777 /var/run/mysqld/mysqld.sock
# chmod 777 /var/run/mysqld/mysqld.pid

echo "YOUR MYSQL_DATABASE IS $MYSQL_DATABASE"
echo "YOUR MYSQL_USER IS $MYSQL_USER"
echo "YOUR MYSQL_PASSWORD IS $MYSQL_PASSWORD"
echo "YOUR MYSQL_ROOT_PASSWORD IS $MYSQL_ROOT_PASSWORD"

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

# mysql < db1.sql

mysqld_safe --user=mysql --datadir="/var/lib/mysql" --init-file=db1.sql

# kill $(cat /var/run/mysqld/mysqld.pid)

# mysqld_safe


# echo "1"
# mysql -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;"
# echo "2"
# mysql -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
# echo "3"
# mysql -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
# echo "4"

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

# # mysql -e "FLUSH PRIVILEGES;"

# echo "5"

# touch /var/run/mysqld/mysqld.pid
# touch /var/run/mysqld/mysqld.sock
# chmod 777 /var/run/mysqld/mysqld.sock

# echo "6"
# # mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown
# echo "7"

# exec mysqld_safe


# mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;"
# mysql -e "CREATE USER IF NOT EXISTS 'mysql'@'localhost' IDENTIFIED BY 'Born2beroot.';"
# mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'mysql'@'%' IDENTIFIED BY 'Born2beroot.';"

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'Born2beroot.';"

# mysqladmin -u root -p'Born2beroot.' shutdown