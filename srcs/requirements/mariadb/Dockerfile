FROM	debian:buster

RUN		apt update -y && \
		apt install mariadb-server -y

COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY	tools/init_setup.sh /
RUN		chmod +x init_setup.sh

EXPOSE	3306

CMD		["/init_setup.sh"]
