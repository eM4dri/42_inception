- Create nginx.conf to set defaults configuration
- Create index.html to set default welcome page
- Create dockerfile instaling NGINX, exposing some PORT and update conf file and index

- Build docker image && run container from image on some port host:container
> docker build -t inginx . && docker run --name cnginx -d -p 443:443 inginx

- Stop container and remove it
> docker stop cnginx && docker rm cnginx
- Remove unused images & specific images
> docker image prune && docker image rm inginx

- If needed we can access to inspect container
> docker exec -it cnginx sh

- Test instalation with curl
>  curl localhost:443                   // error plain http not allowed
>  curl  https://localhost:443          // warning self certificate problem
>  curl -k https://localhost:443        // index.html returned -k ignore certificate errors
