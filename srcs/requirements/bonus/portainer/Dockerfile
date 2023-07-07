FROM	alpine:3.17

# Install pkgs
 RUN apk add --update docker openrc wget
 #RUN	apk update && \
#	apk add docker && \
#	apk add	openrc && \
#	apk add wget

RUN rc-update add docker boot

# Copy needed files
COPY	conf/init_setup.sh		/

RUN		chmod +x init_setup.sh

# Expose ports
EXPOSE	9443
EXPOSE	9000

# Start
CMD ["/init_setup.sh"]
# RUN apk add --update docker openrc wget
 #RUN rc-update add docker boot

#RUN wget https://github.com/portainer/portainer/releases/download/2.18.3/portainer-2.18.3-linux-amd64.tar.gz 

#RUN tar -xvf portainer-2.18.3-linux-amd64.tar.gz
