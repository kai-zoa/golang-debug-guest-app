#! /usr/bin/env bash

# gdb bin/golang-debug-guest-app
docker exec -it my_debugger gdb golang-debug-guest-app

# example
# target remote runner:9091