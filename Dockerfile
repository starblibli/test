FROM nginx

ARG TZ="Asia/Shanghai"

ENV TZ ${TZ}

COPY keepalived  /etc/keepalived
COPY docker-entrypoint-n.sh /

RUN apt-get update

RUN apt-get install -y keepalived
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN chmod 777 /etc/keepalived/chk_nginx.sh
RUN chmod 777 /docker-entrypoint-n.sh

ENTRYPOINT ["/docker-entrypoint-n.sh"]

CMD ["nginx", "-g", "daemon off;"]
