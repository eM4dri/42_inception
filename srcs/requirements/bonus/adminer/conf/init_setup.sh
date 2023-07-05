#!/bin/sh

mkdir /var/adminer

wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

mv adminer-4.8.1.php /var/adminer/index.php

chown -R www-data:www-data /var/adminer
chmod 755 /var/adminer/index.php

cd /var/adminer

php -S 0.0.0.0:8042
