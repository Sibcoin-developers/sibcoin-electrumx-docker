#!/bin/bash

echo "Installation..."
echo "Check packages"
for i in docker docker-compose
    do
        if [ $i ]
            then
                continue
        else
            if [$i == docker ]
                then
                    apt-get install -y docker.io
                else
                    apt-get install -y $i
            fi
        fi
    done
usermod -a -G docker $USER

echo "Dependencies successfully installed"
echo "Creating volumes"
for dir in sibcoind_data electrumx_data
    do
        if [[ ! -e /srv/$dir ]]; then
            mkdir -p /srv/$dir
            chmod -R 777 /srv/$dir
        else
            chmod -R 777 /srv/$dir
        fi
    done
echo "Volumes successfully created"
echo "Building containers"
docker-compose build
echo "Run 'docker-compose up -d'"