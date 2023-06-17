FROM alpine:3.18

# Install nginx & openssl
RUN     apk update && \
        apk add nginx && \
        apk upgrade --update-cache --available && \
        apk add openssl && \
        rm -rf /var/cache/apk/*

# Create Self-Signed SSL
# From
#       https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-debian-10
#       https://devopscube.com/create-self-signed-certificates-openssl/
RUN     openssl req -x509 \
        -nodes \
        -sha256 -days 365 \
        -newkey rsa:4096 \
        -subj "/CN=emadriga.42.fr/C=ES/L=Madrid" \
        -keyout /etc/ssl/private/emadriga-selfsigned.key \
        -out /etc/ssl/certs/emadriga-selfsigned.crt

# Replace default Nginx configuration & index.html
COPY conf/nginx.conf /etc/nginx/http.d/
COPY conf/index.html /var/lib/nginx/html/

# Expose port 443
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
