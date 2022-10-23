#!/bin/bash
docker build -t part_4 .
docker run -d -p 81:80 --name="part_4" part_4
docker exec -it part_4 bash

# spawn-fcgi -p 8080 -n -- ./part_4.fcgi & -ввести команду