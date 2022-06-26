FROM fuco1/build-base:hirsute-1.0 as build

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libboost-all-dev \
    libqt5x11extras5-dev \
    qt5-qmake \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /twmn
COPY ./twmn /twmn
RUN qmake && make clean && make && make install

FROM ubuntu:hirsute as final

RUN apt-get update \
    && apt-get install -y libqt5gui5 \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /usr/local/bin/twmnd /usr/local/bin/twmnd

CMD ["/usr/local/bin/twmnd"]
