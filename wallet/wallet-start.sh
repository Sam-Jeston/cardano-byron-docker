#!/bin/bash
echo "Waiting 50 seconds for Cardano SL to boot...."
sleep 50
cardano-wallet serve --port 8088 --bridge-port 8090