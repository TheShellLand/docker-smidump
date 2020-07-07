#!/bin/bash

# build script for smidump

cd $(dirname $0)

docker build -t docker-smidump $@ -f Dockerfile .
docker images | grep docker-smidump
