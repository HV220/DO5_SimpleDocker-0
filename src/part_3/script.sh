#!/bin/bash
docker build -t part_3 .
docker run -d -p 81:80 --name="part_3" part_3
docker exec -it part_3 bash

# spawn-fcgi -p 8080 -n -- ./part_4.fcgi & -ввести команду
# curl http://localhost:81/ -ввести команду