#!/bin/sh

IMAGE=zipmerge-static

docker build -t ${IMAGE} .
mkdir -p static
id=$(docker create ${IMAGE})
docker cp $id:/go/src/zipmerge/zipmerge static
docker rm -v $id
