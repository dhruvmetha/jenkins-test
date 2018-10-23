#! /bin/sh
set -x

docker network create --driver bridge mynet

docker build -t mongo-image ./mongo
docker run -u root -d --network=mynet --name mongo -p 27017:27017 mongo-image

docker build -t node-image ./node
docker run -u root -d --network=mynet --name node -p 3001:3001 -p 443:443 node-image

docker build -t selenium-image ./selenium


docker network inspect mynet

set +x