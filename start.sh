#! /usr/bin/env bash

docker-compose rm && docker-compose build && docker-compose up -d
# デバッグビルド
docker exec -it my_runner go install -gcflags "-N -l" github.com/kai-zoa/golang-debug-guest-app
# gdbserverを立ち上げて起動
docker exec -it my_runner gdbserver localhost:9091 golang-debug-guest-app
echo
docker-compose stop && docker-compose rm -f