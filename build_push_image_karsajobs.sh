#!/bin/bash

#build dari dockerfile
docker build -t ghcr.io/orochimadit/karsajobs:latest . 

#cek list docker images yang ada 
docker images

#push docker image ke Girhub Packages 
#docker tag karsajobs:latest orochimadit/karsajobs:latest
#login ke 
echo $CR_PAT | docker login ghcr.io --username orochimadit --password-stdin

docker push ghcr.io/orochimadit/karsajobs:latest

#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