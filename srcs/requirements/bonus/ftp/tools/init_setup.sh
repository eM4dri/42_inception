#!/bin/sh

if [ ! -f /ftp_server_deployed ]; then
	mv /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.old
	mv /tmp/vsftpd.conf /etc/vsftpd/vsftpd.conf

	adduser $FTP_USER --disabled-password
	echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd

	echo $FTP_USER >> /etc/vsftpd.userlist

	mkdir -p /var/www/html
	chown -R $FTP_USER:$FTP_USER /var/www/html

	touch /ftp_server_deployed
	chmod 444 /ftp_server_deployed
fi

chown -R $FTP_USER:$FTP_USER /var/www/html

echo "[INFO] starting... FTP server"

vsftpd /etc/vsftpd/vsftpd.conf