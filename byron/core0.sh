#!/bin/bash
stateDir=/cardano-wallet/lib/http-bridge/test/data/cardano-node-simple

cardano-node-simple \
  --system-start ${sysStart} \
  --node-id node0 \
  --keyfile "${stateDir}/keys/core0.sk" \
  --configuration-file "${stateDir}/configuration.yaml" \
  --configuration-key default \
  --topology "/byron/topology.yaml" \
  --db-path /tmp/cardano-node-simple/db/core0 \
  --listen 127.0.0.1:3000 \
  --log-config "${stateDir}/logs/core0/config.json" \
  --rebuild-db