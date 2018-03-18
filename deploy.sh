#!/bin/bash
set -ex

. ./env

echo $IP_TO_DEPLOY
echo $DOCKER_MACHINE_NAME

#docker-machine ls | cut -f1 -d' ' | awk '{if(NR>1)print}' | grep
#docker-machine rm -y $DOCKER_MACHINE_NAME

#docker-machine create \
  #--driver generic \
  #--generic-ip-address=$IP_TO_DEPLOY \
  #--generic-ssh-key ~/.ssh/id_rsa \
  #$DOCKER_MACHINE_NAME

#eval $(docker-machine env $DOCKER_MACHINE_NAME)
eval "$(docker-machine env $DOCKER_MACHINE_NAME)"

docker-compose -f docker-compose.yaml -f docker-compose.prod.yaml up -d

eval "$(docker-machine env -u)"
