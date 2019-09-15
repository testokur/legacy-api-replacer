#!/bin/bash
docker load -i /home/images/testokur-legacy.tar
docker stop testokur-legacy
docker rm --force testokur-legacy
docker run -d  \
    --env-file  /home/env/testokur-legacy.env \
	--name testokur-legacy \
	--restart=always  \
	--network=testokur \
	--network-alias=testokur-legacy \
	testokur-legacy:latest
