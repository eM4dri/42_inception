#!/bin/sh

if [ ! -f "/adminer_installed" ]
then
	mkdir /var/adminer

	wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

	mv adminer-4.8.1.php /var/adminer/index.php

	chown -R www-data:www-data /var/adminer
	chmod 755 /var/adminer/index.php

	cd /var/adminer
	touch /adminer_installed
	chmod 444 /adminer_installed
fi

php -S 0.0.0.0:8042
