#!/bin/sh

if [ ! -f "/redis_configured" ]
then
	sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis.conf

	sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis.conf

	sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis.conf

	touch /redis_configured
	chmod 444 /redis_configured
fi

redis-server --protected-mode no