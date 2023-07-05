FROM	alpine:3.17

# Install PHP and and wget
RUN		apk update	&& \
		apk add wget && \
		apk add php php-mysqli php-pdo php-pdo_mysql php-session

# Copy needed files
COPY	conf/init_setup.sh		/

RUN		chmod +x init_setup.sh

# Expose port 8042
EXPOSE	8042

# Start
CMD ["/init_setup.sh"]
