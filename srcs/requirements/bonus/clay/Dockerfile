FROM	alpine:3.17

RUN		apk add --update py3-pip

RUN		pip install clay

COPY	conf/index.html			/
COPY	tools/init_setup.sh		/
RUN		chmod +x init_setup.sh

EXPOSE	8081

CMD		["/init_setup.sh"]
