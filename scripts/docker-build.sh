#!/usr/bin/env bash

docker rmi -f demo-remote-debug-golang:0.0.1
docker build -t demo-remote-debug-golang:0.0.1 .
