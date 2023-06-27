

# # Create Self-Signed SSL
# # From
# #       https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-debian-10
# #       https://devopscube.com/create-self-signed-certificates-openssl/
openssl req	-x509 \
			-nodes \
			-sha256 -days 365 \
			-newkey rsa:4096 \
			-subj "/CN=emadriga.42.fr/C=ES/L=Madrid" \
			-keyout emadriga-selfsigned.key \
			-out emadriga-selfsigned.crt