#!/bin/sh

clay new myapp

cp index.html myapp/

cd myapp

#clay run --host=127.0.0.1 --port=8081
clay run --port=8081
