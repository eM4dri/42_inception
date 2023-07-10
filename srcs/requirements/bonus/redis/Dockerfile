FROM	alpine:3.17

RUN		apk add --update redis sed

COPY	tools/init_setup.sh		/
RUN		chmod +x init_setup.sh

EXPOSE	6379

CMD		["/init_setup.sh"]
