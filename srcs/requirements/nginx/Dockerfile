FROM	alpine:3.17

RUN		apk add --update nginx openssl wget


# Create Self-Signed SSL
# From
#       https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-debian-10
#       https://devopscube.com/create-self-signed-certificates-openssl/
RUN		openssl req -x509 \
		-nodes \
		-sha256 -days 365 \
		-newkey rsa:4096 \
		-subj "/CN=emadriga.42.fr/C=ES/L=Madrid" \
		-keyout /etc/ssl/private/emadriga-selfsigned.key \
		-out /etc/ssl/certs/emadriga-selfsigned.crt

COPY	conf/nginx.conf /etc/nginx/http.d/
COPY	conf/index.html /var/lib/nginx/html/
COPY	conf/proxy_params /etc/nginx/proxy_params

EXPOSE	443

CMD		["nginx", "-g", "daemon off;"]
