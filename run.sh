#!/bin/bash

# run script for smidump
# maps are saved to "$(pwd)/mibs"

cd $(dirname $0)

docker run --rm -it -v "$(pwd)/mibs":/mibs docker-smidump "$@"
