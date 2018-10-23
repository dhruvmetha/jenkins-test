#! /bin/sh
set -x
docker exec -it selenium ls
docker exec -it selenium python -m unittest discover -v
set +x