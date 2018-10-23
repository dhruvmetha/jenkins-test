#! /bin/sh
set -x
docker exec selenium python -m unittest discover -v
set +x