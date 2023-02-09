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

## As Systemd Unit

A user systemd unit can be installed by placing the file
`twmn/init/systemd/twmnd.service` to `~/.config/systemd/user`.  This
file will run twmnd installed on the host computer.  To run the docker
version, use the following service file.

``` ini
[Unit]
Description=TWMN Daemon

[Service]
ExecStart=/home/matus/.local/bin/twmnd
ExecReload=docker restart twmnd

[Install]
WantedBy=default.target
```

where `ExecStart` points to the `twmnd` shellscript which runs docker.
