FROM alpine:3.18

# Install MariaDB
RUN     apk update && \
	apk add mysql mysql-client && \
#	apk add mariadb && \
	apk add openrc && \
	apk add bash
	#apk add mysql mysql-client
	#apk add openrc && \
        #apk add mariadb

RUN	mkdir -p /run/openrc && \
	touch /run/openrc/softlevel 

#RUN	rc-update add mariadb default

#RUN	mysql_install_db --user=root --datadir=/var/lib/mysql

#RUN	rc-service mariadb start


# Loop keep container open
CMD ["/bin/bash"]
