#!/bin/bash

export TERM="xterm"

cd /twmn
qmake
make clean
make
