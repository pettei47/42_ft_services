FROM		alpine

RUN			apk add grafana --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache && \
			apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted --no-cache

COPY		/srcs_grafana/telegraf.conf		/etc/telegraf/
COPY		/srcs_grafana/grafana.db		/usr/share/grafana/data/
COPY		/srcs_grafana/start_grafana.sh	/

WORKDIR		/usr/share/grafana

EXPOSE		3000

ENTRYPOINT	sh /start_grafana.sh
