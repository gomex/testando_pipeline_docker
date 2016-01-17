#!/bin/bash

DOCKER=/usr/bin/docker

$DOCKER rm redis-${ENV_APP}
$DOCKER run -d -v dados:/data --name redis-${ENV_APP} redis
