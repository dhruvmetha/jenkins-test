#! /bin/sh
set -x
docker run -it selenium-image python test_click.py
set +x