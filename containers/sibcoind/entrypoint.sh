#!/bin/sh -ex

chown sibcoin:sibcoin -R /data/sibcoin

exec gosu sibcoin:sibcoin sibcoind -datadir=/data/sibcoin -conf=/etc/sibcoin.conf $@