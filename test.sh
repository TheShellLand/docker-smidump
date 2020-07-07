#!/bin/bash

# test script for smidump

cd $(dirname $0)

#docker run --rm -it --entrypoint bash docker-smidump "$@"
docker run --rm -it docker-smidump "$@"
