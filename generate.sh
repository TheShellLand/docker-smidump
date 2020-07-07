#!/bin/bash

# generate mappings

cd $(dirname $0)

source env.sh
python3 generate_maps.py
