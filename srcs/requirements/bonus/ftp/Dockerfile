FROM	alpine:3.17

RUN apk add --update vsftpd openrc
RUN rc-update add vsftpd boot

# Copy needed files
# COPY	conf/init_setup.sh		/
COPY	conf/vsftpd.conf			/

# RUN		chmod +x init_setup.sh


# Expose port 8081
EXPOSE	8081

# Start
CMD ["/bin/sh"]
