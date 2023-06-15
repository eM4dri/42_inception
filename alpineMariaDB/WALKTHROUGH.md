- Create nginx.conf to set defaults configuration
- Create index.html to set default welcome page
- Create dockerfile instaling MariaDB, exposing some PORT and update conf file

- Build docker image && run container from image on some port host:container
> docker build -t imariadb . && docker run --name cmariadb -d -p 3306:3306 imariadb

- Stop container and remove it
> docker stop cmariadb && docker rm cmariadb
- Remove unused images & specific images
> docker image prune && docker image rm imariadb

- If needed we can access to inspect container
> docker exec -it cmariadb sh

- Test instalation with curl
>  curl localhost:443                   // error plain http not allowed
>  curl  https://localhost:443          // warning self certificate problem
>  curl -k https://localhost:443        // index.html returned -k ignore certificate errors
