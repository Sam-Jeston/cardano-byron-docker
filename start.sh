#!/bin/bash

sysStart="$(date +%s)" docker-compose up --build -d
echo "A cardano-sl demo cluster, http-bridge and cardano-wallet are now booting. Check the docker-compose logs in ~60 seconds"