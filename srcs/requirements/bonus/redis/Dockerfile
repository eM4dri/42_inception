FROM	alpine:3.17

# Install redis && sed
RUN		apk update	&& \
		apk add redis && \
		apk add sed

# Copy needed files
COPY	conf/init_setup.sh		/

RUN		chmod +x init_setup.sh

# Expose port 6379
EXPOSE	6379

# Start
CMD ["/init_setup.sh"]
