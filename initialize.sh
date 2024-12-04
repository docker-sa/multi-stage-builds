#!/bin/bash
docker context use desktop-linux
#docker context use default

#docker build --file ./Dockerfile.00.golang -t hello-go:00.golang.img .
#docker build --file ./Dockerfile.01.ubuntu -t hello-go:01.ubuntu.img .
#docker build --file ./Dockerfile.02.scratch -t hello-go:02.scratch.img .

docker buildx bake