#!/bin/bash

docker build -t zack/ad-zaijian-armhf -f Dockerfile.armhf .
docker push zack/ad-zaijian-armhf
