#!/bin/bash

docker-compose pull
sysStart="$(date +%s)" docker-compose up -d
echo "A cardano-sl demo cluster, http-bridge and cardano-wallet are now booting... 60 seconds remain"
sleep 20
echo "40 seconds remain"
sleep 20
echo "20 seconds remain"
sleep 20
echo "Done"