#!/bin/bash

#build dari dockerfile
docker build -t ghcr.io/orochimadit/karsajobs-ui:latest . 

#cek list docker images yang ada 
docker images

#push docker image ke Github Packages
#docker tag karsajobs-ui:latest orochimadit/karsajobs-ui:latest
echo $CR_PAT |  docker login  ghcr.io  --username orochimadit --password-stdin

docker push ghcr.io/orochimadit/karsajobs-ui:latest