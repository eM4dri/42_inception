FROM	debian:buster

# Install MariaDB
RUN	apt update -y && \
	apt install php-fpm php-mysql -y && \
	apt install curl -y

# Copy script load db
COPY	init_setup.sh /

# Start Nginx
CMD ["/init_setup.sh"]
