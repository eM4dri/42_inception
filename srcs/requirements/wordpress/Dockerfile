FROM	debian:buster

RUN	apt-get update -y && \
	apt upgrade -y && \
	apt-get -y install wget

RUN	apt-get install -y	php7.3 \
						php-fpm \
						php-mysql \
						mariadb-client \
						redis \
						php-redis



COPY tools/init_setup.sh /

CMD ["/init_setup.sh"]
