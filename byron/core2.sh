#!/bin/bash
stateDir=/cardano-wallet/lib/http-bridge/test/data/cardano-node-simple

echo "Waiting for core0 & 1"
sleep 20

cardano-node-simple \
  --system-start ${sysStart} \
  --node-id core2 \
  --keyfile "${stateDir}/keys/core2.sk" \
  --configuration-file "${stateDir}/configuration.yaml" \
  --configuration-key default \
  --topology "${stateDir}/topology.json" \
  --db-path /tmp/cardano-node-simple/db/core2 \
  --listen 127.0.0.1:3002 \
  --log-config "${stateDir}/logs/core2/config.json" \
  --rebuild-db