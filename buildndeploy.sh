#!/usr/bin/bash

docker build -t astro-nginx .
docker stop amend-ie
docker rm amend-ie
docker run -d --restart unless-stopped -p 8897:8080 --name amend-ie astro-nginx:latest