#!/bin/sh

#FTP_USER=emadriga
#FTP_PASSWORD='Born2beroot.'

if [ ! -f /ftp_server_deployed ]; then
	adduser $FTP_USER --disabled-password
	echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd

	echo $FTP_USER >> /etc/vsftpd.userlist

	mkdir -p /var/www/html
	chown -R $FTP_USER:$FTP_USER /var/www/html

	touch /ftp_server_deployed
	chmod 444 /ftp_server_deployed
fi

chown -R $FTP_USER:$FTP_USER /var/www/html

vsftpd /etc/vsftpd/vsftpd.conf
