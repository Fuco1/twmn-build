# twmn-build [![Build Status](https://semaphoreci.com/api/v1/github-fuco1/twmn-build/branches/master/shields_badge.svg)](https://semaphoreci.com/github-fuco1/twmn-build)

Build image for [twmn](https://github.com/sboli/twmn).

This project uses [build-base](https://github.com/Fuco1/build-base) structure.

# Usage

``` shell
git clone --recursive https://github.com/Fuco1/twmn-build.git
cd twmn-build
./build
./install
```

After `./install` is run `twmnd` is readily available, it does not seem to need any extra libraries installed on the host.  For the `twmnc` binary you need to install boost's program-options library:

``` shell
sudo apt-get install libboost-program-options1.58.0
```
