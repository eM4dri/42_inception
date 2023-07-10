#!/bin/sh

if [ ! -f "/portainer_installed" ]
then
	wget https://github.com/portainer/portainer/releases/download/2.18.3/portainer-2.18.3-linux-amd64.tar.gz

	tar -xvf portainer-2.18.3-linux-amd64.tar.gz

	touch /portainer_installed
	chmod 444 /portainer_installed
fi

./portainer/portainer

