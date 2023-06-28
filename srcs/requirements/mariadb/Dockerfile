FROM	debian:buster

# Install MariaDB
RUN	apt update -y && \
	apt upgrade -y && \
	apt install mariadb-server -y

# RUN 	apt-get install -y vim && \
# 	echo "syntax on\n \
# 		set number\n \
# 		set mouse=a\n \
# 		set relativenumber\n \
# 		colorscheme blue" \
# 	 > ~/.vimrc

# Replace MariaDB configuration
COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/

# Copy script load db
COPY	conf/init_setup.sh /

# Start mysql service
#RUN	service mysql start

# Expose port 3306
EXPOSE	3306


# ENTRYPOINT ["tail", "-f", "/dev/null"]
# Start Nginx
CMD ["/init_setup.sh"]
# CMD ["/bin/bash.sh"]
