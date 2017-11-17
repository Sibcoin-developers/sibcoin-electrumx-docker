#!/bin/bash

for dir in sibcoind_data electrumx_data
    do
        mkdir -p /srv/$dir && chmod -R 777 /srv/$dir
    done