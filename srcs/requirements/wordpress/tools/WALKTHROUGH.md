- Create nginx.conf to set defaults configuration
- Create index.html to set default welcome page
- Create dockerfile instaling WordPress, exposing some PORT and update conf file

- Build docker image && run container from image on some port host:container
> docker build -t iwordpress . && docker run --name cwordpress -d -p 9000:9000 iwordpress

- Stop container and remove it
> docker stop cwordpress && docker rm cwordpress
- Remove unused images & specific images
> docker image prune && docker image rm iwordpress

- If needed we can access to inspect container
> docker exec -it cwordpress sh:

- Test instalation with curl
>  curl localhost:443                   // error plain http not allowed
>  curl  https://localhost:443          // warning self certificate problem
>  curl -k https://localhost:443        // index.html returned -k ignore certificate errors
