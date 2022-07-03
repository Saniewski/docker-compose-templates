#!/bin/bash

CONTAINER_ID=$(docker container list --filter NAME=redis --format '{{.ID}}')

docker exec -it $CONTAINER_ID /usr/local/bin/redis-cli

exit 0

