#!/bin/bash
echo "Waiting 45 seconds for Cardano SL to boot...."
sleep 45
cardano-http-bridge start --template=local --port 8090