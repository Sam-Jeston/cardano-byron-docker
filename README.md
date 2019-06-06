# Byron Era SL Demo cluster with V2 API

## Building
Rebuild all images:
`docker-compose --build`

You may need to use --no-cache if the repository has been updated since your last build

To manually rebuild a single image:
`docker build -f DockerfileCardanoSl -t cardano-sl-docker_sl .`

## Starting
`./start.sh`

## Stoping
`./stop.sh`

### Accessing a funded wallet
TODO
