#!/bin/bash

docker build -f Dockerfile.build -t "fuco1/twmn-build:latest" .

docker run --rm \
       -v "$(pwd)/twmn":/twmn \
       "fuco1/twmn-build:latest"
