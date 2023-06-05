#!/bin/bash

IMAGE=registry.ldblao.la/ebank/admin-ldb-e-bank

if [ -n "$1" ]; then VERSION=$1; else VERSION="latest";fi

echo "Building image $IMAGE:dev-$VERSION"

# docker build -t $IMAGE:dev-$VERSION .
docker build --platform=linux/amd64 -t $IMAGE:dev-$VERSION .
docker push $IMAGE:dev-$VERSION
