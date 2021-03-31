FROM		alpine

RUN			apk add mariadb mariadb-client && \
			apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache && \
			mkdir -p /run/mysqld/

COPY		./srcs_mysql/telegraf.conf	/etc/telegraf/
COPY		./srcs_mysql/my.cnf			/etc/
COPY		./srcs_mysql/wordpress.sql	/
COPY		./srcs_mysql/start_mysql.sh	/

EXPOSE		3306

ENTRYPOINT	sh start_mysql.sh
