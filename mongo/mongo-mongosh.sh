#!/bin/bash

CONTAINER_ID=$(docker container list --filter NAME=mongo --format '{{.ID}}')

docker exec -it $CONTAINER_ID /usr/bin/mongosh -u root -p root --authenticationDatabase=admin --quiet

exit 0
