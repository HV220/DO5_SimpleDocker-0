FROM nginx:latest

RUN apt-get update && \
    apt install gcc -y && \
    apt install libfcgi-dev -y && \
    apt install spawn-fcgi -y && \
    apt install systemctl -y

WORKDIR /home

COPY part_4.c /home/
COPY default.conf ../etc/nginx/conf.d/default.conf
RUN [ "systemctl","restart", "nginx"]
RUN [ "gcc", "part_4.c", "-o", "part_4.fcgi", "-lfcgi"]
# spawn-fcgi -p 8080 -n part_3.fcgi - input command into created contaiter