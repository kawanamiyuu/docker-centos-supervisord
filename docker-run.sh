#!/bin/bash

docker run -d -i -t -p 2222:22 -v `dirname $0`:/mnt:rw kawanamiyuu/docker-centos-supervisord
docker ps
