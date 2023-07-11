all: up

build:
	docker compose -f srcs/docker-compose.yml build --no-cache

up:
	docker compose -f srcs/docker-compose.yml up -d --build

restart:
	docker compose -f srcs/docker-compose.yml restart

stop:
	docker compose -f srcs/docker-compose.yml down -v

clean:
	docker system prune -af

.PHONY: all build up stop clean restart
