# Byron era demo cluster with cardano-http-bridge and cardano-wallet

## Building
By default, cardano-sl and cardano-http-bridge are pulled from Dockerhub as these are unlikely to change. You can change the image references to build in `docker-compose.yml` if this is desirable.

cardano-wallet targets a specific commit hash. You should change the hash in `DockerfileCardanoWallet` as the project progresses.

Rebuild all images:
`docker-compose --build`

To manually rebuild a single image:
`docker build -f DockerfileCardanoSl -t cardano-sl-docker_sl .`

## Starting
`./start.sh`

This script seeds 10 wallets, so the API can be tested against

You can see them at `http://localhost:8080/v2/wallets`

## Stoping
`./stop.sh`