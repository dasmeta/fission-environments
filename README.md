# Fission Environments

A set of language environments for Fission.

Please visit [environments.fission.io](https://environments.fission.io) to get information about different environments.

## Building custom node images
```shell
# nodejs base docker image tag
NODE_BASE_IMG_TAG=12.22.8-stretch-slim
# logged in dockerhub user username
DOCKERHUB_USER=8723rbycalny8

docker build -t $DOCKERHUB_USER/node-env --build-arg NODE_BASE_IMG=$NODE_BASE_IMG_TAG -f Dockerfile . 
docker push $DOCKERHUB_USER/node-env

cd builder && docker build -t $DOCKERHUB_USER/node-builder --build-arg NODE_BASE_IMG=$NODE_BASE_IMG_TAG -f Dockerfile .
docker push $DOCKERHUB_USER/node-builder
```
