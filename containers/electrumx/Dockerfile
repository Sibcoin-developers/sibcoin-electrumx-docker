FROM python:3

MAINTAINER serbernar <serbernar1@gmail.com>

ARG ELECTRUMX_VERSION=1.0.10

RUN apt-get update && \
    apt-get install -y libleveldb-dev gcc g++

RUN pip install git+git://github.com/kyuupichan/electrumx.git@${ELECTRUMX_VERSION}
RUN pip install git+git://github.com/Verbalist/x11_gost_hash.git
RUN useradd electrumx && \
    mkdir -p /srv/db && \
    chown electrumx:electrumx /srv/db
RUN git clone https://github.com/serbernar/electrumx.git
RUN chown electrumx:electrumx /electrumx
WORKDIR /electrumx
COPY jsonrpc.py lib/jsonrpc.py

USER electrumx

CMD ["python3", "electrumx_server.py"]