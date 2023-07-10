FROM	alpine:3.17

RUN		apk add --update wget php php-mysqli php-pdo php-pdo_mysql php-session

COPY	tools/init_setup.sh		/
RUN		chmod +x init_setup.sh

EXPOSE	8042

CMD		["/init_setup.sh"]
