# Byron era demo cluster with cardano-http-bridge and cardano-wallet

## Building
Rebuild all images:
`docker-compose --build`

You may need to use --no-cache if the repository has been updated since your last build

To manually rebuild a single image:
`docker build -f DockerfileCardanoSl -t cardano-sl-docker_sl .`

## Starting
`./start.sh`

This script seeds 10 wallets, so the API can be tested against

You can see them at `http://localhost:8080/v2/wallets`

## Stoping
`./stop.sh`