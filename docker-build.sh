#!/bin/bash

docker build --rm -t centos:spvsd `dirname $0`
docker images
