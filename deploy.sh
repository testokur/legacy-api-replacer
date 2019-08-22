#!/bin/bash
docker load -i /home/docker-images/testokur-legacy.tar
docker stop testokur-legacy
docker rm --force testokur-legacy
docker run -d  \
    --env-file  /home/docker-images/testokur-legacy.env \
	--name testokur-legacy \
	--restart=always  \
	--network=testokur \
	--network-alias=testokur-legacy \
	testokur-legacy:latest
