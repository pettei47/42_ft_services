FROM		alpine

RUN			apk update && apk add vsftpd openssl && \
			apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache && \
			echo "root:toor" | chpasswd && \
			openssl req -x509 -nodes -days 365 \
			-newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42/CN=127.0.0.1" \
			-keyout /etc/ssl/private/vsftpd.key \
			-out /etc/ssl/certs/vsftpd.crt

COPY		/srcs_ftps/telegraf.conf	/etc/telegraf/
COPY		/srcs_ftps/vsftpd.conf		/etc/vsftpd
COPY		/srcs_ftps/start_ftps.sh	/

#Port 21 works in active and passive mode. Port 30021 only passive mode works.
EXPOSE		21 30021

ENTRYPOINT	sh start_ftps.sh