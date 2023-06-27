FROM	debian:buster

# Install MariaDB
RUN	apt-get update -y && \
	apt upgrade -y && \
	apt-get -y install wget

RUN	apt-get install -y	php7.3\
						php-fpm\
						php-mysql\
						mariadb-client

RUN wget https://wordpress.org/wordpress-6.2.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.2.tar.gz && rm wordpress-6.2.tar.gz

RUN		chown -R root:root /var/www/wordpress

# Copy script load db
COPY	conf/init_setup.sh /

# Start Nginx
CMD ["/init_setup.sh"]