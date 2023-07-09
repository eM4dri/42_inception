- Build docker image && run container from image on some port host:container
> docker build -t imariadb . && docker run --name cmariadb -d -p 3306:3306 imariadb

- Stop container and remove it
> docker stop cmariadb && docker rm cmariadb
- Remove unused images & specific images
> docker image prune && docker image rm imariadb

- If needed we can access to inspect container
> docker exec -it cmariadb sh

- Test instalation
>  mysql -h localhost -P 3306 -u root -p  // with a mysql client you could connect
