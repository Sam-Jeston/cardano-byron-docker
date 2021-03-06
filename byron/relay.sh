#!/bin/bash
stateDir=/cardano-wallet/lib/http-bridge/test/data/cardano-node-simple

echo "Waiting for core0, 1 & 2"
sleep 30

cardano-node-simple \
  --system-start ${sysStart} \
  --node-id relay \
  --keyfile "${stateDir}/keys/relay.sk" \
  --configuration-file "${stateDir}/configuration.yaml" \
  --configuration-key default \
  --topology "${stateDir}/topology.json" \
  --db-path /tmp/cardano-node-simple/db/relay \
  --listen 127.0.0.1:3100 \
  --log-config "${stateDir}/logs/relay/config.json" \
  --rebuild-db \
  --node-api-address 127.0.0.1:3101 \
  --node-doc-address 127.0.0.1:3102 \
  --tlscert /dev/null \
  --tlskey /dev/null \
  --tlsca /dev/null \
  --no-tls