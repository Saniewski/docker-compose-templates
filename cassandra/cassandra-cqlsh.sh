#!/bin/bash

CONTAINER_ID=$(docker container list --filter NAME=cassandra --format '{{.ID}}')

docker exec -it $CONTAINER_ID /opt/cassandra/bin/cqlsh

exit 0
