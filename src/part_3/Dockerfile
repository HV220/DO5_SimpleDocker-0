FROM nginx:latest

RUN apt-get update && \
    apt install gcc -y && \
    apt install libfcgi-dev -y && \
    apt install spawn-fcgi -y && \
    apt install systemctl -y

WORKDIR /home

COPY part_3.c /home/
COPY script.sh /home/
COPY nginx/default.conf ../etc/nginx/conf.d/default.conf
RUN [ "systemctl","restart", "nginx"]
RUN [ "gcc", "part_3.c", "-o", "part_3.fcgi", "-lfcgi"]
