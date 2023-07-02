FROM	alpine:3.17

# Install python3-pip
RUN		apk update	&& \
		apk add py3-pip
		# apk add --update python3

# Install clay
RUN		pip install clay

# # Creeate appdirectory
# RUN		clay new myapp

# Copy needed files
COPY	conf/init_setup.sh		/
COPY	conf/index.html			/

RUN		chmod +x init_setup.sh

# Expose port 8080
EXPOSE	8080

# Start
CMD ["/init_setup.sh"]

# FROM	debian:buster

# # Install python
# RUN		apt update -y && \
# 		apt upgrade -y && \
# 		apt install -y python3-pip

# # Install clay
# RUN		pip3 install clay

# # Copy needed files
# COPY	conf/run_service.sh		/
# COPY	conf/index.html			myapp/

# RUN		chmod +x run_service.sh

# # Expose port 8080
# EXPOSE	8080

# # Start
# CMD ["/run_service.sh"]

