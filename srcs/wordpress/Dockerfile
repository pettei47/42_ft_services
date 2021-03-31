FROM		alpine

RUN			apk add wget php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session && \
			apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache
RUN			mkdir -p /usr/share/webapps/ && cd /usr/share/webapps/
RUN			wget https://wordpress.org/wordpress-5.6.tar.gz && tar -xzvf wordpress-5.6.tar.gz && rm wordpress-5.6.tar.gz
RUN			mkdir -p /var/www && mv /wordpress /var/www/

COPY		/srcs_wp/telegraf.conf	/etc/telegraf/
COPY		/srcs_wp/wp-config.php	/var/www/wordpress/
COPY		/srcs_wp/start_wp.sh	/

EXPOSE	5050

ENTRYPOINT sh start_wp.sh