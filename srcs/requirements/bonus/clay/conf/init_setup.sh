#!/bin/sh

clay new myapp

cp index.html myapp/

cd myapp

clay run --host=emadriga.42.fr --port=8081
