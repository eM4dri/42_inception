SSL_DIR=srcs/requirements/nginx/conf/openssl

# SSL_CERTS=$(SSL_DIR)/emadriga-selfsigned%

SSL_CERTS=$(SSL_DIR)/emadriga-selfsigned.crt $(SSL_DIR)/emadriga-selfsigned.key

all: ssl	up

ssl: $(SSL_CERTS)

$(SSL_DIR)/%.crt $(SSL_DIR)/%.key:
	cd $(SSL_DIR) && ./create_self_signed_ssl_certs.sh

build:
	docker compose -f srcs/docker-compose.yml build --no-cache

up:
	docker compose -f srcs/docker-compose.yml up -d

restart:
	docker compose -f srcs/docker-compose.yml restart

stop:
	# docker compose -f srcs/docker-compose.yml down -v --rmi all --remove-orphans
	docker compose -f srcs/docker-compose.yml down -v

clean:
	docker system prune -af

.PHONY: all ssl build up stop clean restart
