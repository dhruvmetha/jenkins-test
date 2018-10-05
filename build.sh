#! /bin/sh
set -x

docker network create --driver bridge mynet

docker build -t mongo-image -f ./mongo
docker run -u root -d --network=mynet --name mongo -p 27017:27017 mongo-image-image

docker build -t node-image -f ./node
docker run -u root -d --network=mynet --name node -p 3000:3000 -p 443:443 node-image


docker network inspect mynet

set +x