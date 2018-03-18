#!/bin/bash

. env
docker-machine create \
  --driver generic \
  --generic-ip-address=$IP_TO_DEPLOY \
  --generic-ssh-key $ID_RSA \
  $DOCKER_MACHINE_NAME
