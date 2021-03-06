#!/bin/bash
stateDir=/cardano-wallet/lib/http-bridge/test/data/cardano-node-simple

echo "Waiting for core0"
sleep 10

cardano-node-simple \
  --system-start ${sysStart} \
  --node-id core1 \
  --keyfile "${stateDir}/keys/core1.sk" \
  --configuration-file "${stateDir}/configuration.yaml" \
  --configuration-key default \
  --topology "${stateDir}/topology.json" \
  --db-path /tmp/cardano-node-simple/db/core1 \
  --listen 127.0.0.1:3001 \
  --log-config "${stateDir}/logs/core1/config.json" \
  --rebuild-db