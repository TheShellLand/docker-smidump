#!/bin/bash

# entrypoint

set -xe

smidump --level=6 -s -m -k -f python -p  "$@" || exec $@

exec bash /generate.sh
