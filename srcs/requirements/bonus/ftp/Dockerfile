FROM	alpine:3.17

RUN apk add --update vsftpd openrc
RUN rc-update add vsftpd boot

COPY	tools/init_setup.sh		/
COPY	conf/vsftpd.conf		/etc/vsftpd/

RUN		chmod +x init_setup.sh

EXPOSE	21

CMD ["/init_setup.sh"]
