#!bin/bash
#build images
docker build -t item-app:v1 . 
#cek list
docker images 

#push docker ke docker hub
docker tag item-app:v1 orochimadit/item-app:v1

cat ../dockerpass.txt | docker login --username orochimadit --password-stdin



docker push orochimadit/item-app:v1