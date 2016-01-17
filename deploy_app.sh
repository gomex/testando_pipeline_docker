#!/bin/bash

DOCKER=/usr/bin/docker

$DOCKER rm app-${ENV_APP}
$DOCKER run -d -p ${PYTHON_PORT}:${PYTHON_PORT} --link redis-${ENV_APP} --name app-${ENV_APP} --env-file variaveis ${IMAGEM}
