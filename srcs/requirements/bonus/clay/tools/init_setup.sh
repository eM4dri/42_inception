#!/bin/sh

if [ ! -f "/clayweb_created" ]
then
	clay new myapp

	cp index.html myapp/

	touch /clayweb_created
	chmod 444 /clayweb_created
fi

cd myapp

clay run --port=8081
