#!/bin/bash

docker build --rm -t kawanamiyuu/docker-centos-supervisord `dirname $0`
docker images
