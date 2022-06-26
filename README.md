# twmn-build [![Build Status](https://semaphoreci.com/api/v1/github-fuco1/twmn-build/branches/master/shields_badge.svg)](https://semaphoreci.com/github-fuco1/twmn-build)

Build image for [twmn](https://github.com/sboli/twmn).

This project uses [build-base](https://github.com/Fuco1/build-base) structure.

# Usage

``` shell
git clone --recursive https://github.com/Fuco1/twmn-build.git
cd twmn-build
./build
```

After the build, the `twmnd` daemon is ready to run as a docker
container.  Use `./twmnd` to start it.

This repo does not provide the `twmnc` client.
