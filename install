#!/bin/bash

docker run --rm \
       -v "$(pwd)/twmn":/twmn \
       -v /usr/local:/usr/local \
       --entrypoint "/bin/bash" \
       "fuco1/twmn-build:latest" -c "cd /twmn && make install"
