- Download a release version of ce-portainer untar and execute

- Build docker image && run container from image on some port host:container
> docker build -t iportainer . 
> docker run -d -p 9000:9000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data iportainer

- Stop container and remove it
> docker stop portainer && docker rm portainer
- Remove unused images & specific images
> docker image prune && docker image rm iportainer

- If needed we can access to inspect container
> docker exec -it portainer sh

