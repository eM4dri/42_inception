FROM	alpine:3.17

RUN		apk add --update docker openrc wget
RUN		rc-update add docker boot

COPY	tools/init_setup.sh		/
RUN		chmod +x init_setup.sh

EXPOSE	9443
EXPOSE	9000

CMD ["/init_setup.sh"]

