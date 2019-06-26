#!/bin/bash

docker-compose --pull
sysStart="$(date +%s)" docker-compose up -d
echo "A cardano-sl demo cluster, http-bridge and cardano-wallet are now booting. Check the docker-compose logs in ~60 seconds"