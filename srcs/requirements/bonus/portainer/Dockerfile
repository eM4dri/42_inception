FROM	debian:buster

# Install python3-pip
RUN		apt update	&& \
		apt install -y git && \
		apt install -y docker.io

# udo apt install git docker.io
# # Install clay
# RUN		pip install clay

# Copy needed files
COPY	conf/init_setup.sh		/

RUN		chmod +x init_setup.sh

# Expose port 8081
EXPOSE	9000


# Start
CMD ["/init_setup.sh"]
