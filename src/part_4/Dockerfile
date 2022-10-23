FROM nginx:latest

RUN apt-get update && \
    apt install gcc -y && \
    apt install libfcgi-dev -y && \
    apt install spawn-fcgi -y && \
    apt install systemctl -y

WORKDIR /home

COPY part_4.c /home/
COPY default.conf ../etc/nginx/conf.d/default.conf
COPY script.sh /home/

RUN [ "systemctl","restart", "nginx"]
RUN [ "gcc", "part_4.c", "-o", "part_4.fcgi", "-lfcgi"]
# RUN sh ./script.sh
# RUN curl http://localhost:80/
# RUN kill -9 9
# spawn-fcgi -p 80 -n part_4.fcgi - input command into created contaiter