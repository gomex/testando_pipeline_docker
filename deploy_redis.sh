#!/bin/bash

DOCKER=/usr/bin/docker

$DOCKER inspect redis-${ENV_APP}

if [ $? == 0 ]; then

  $DOCKER rm redis-${ENV_APP}

fi
