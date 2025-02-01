#!/usr/bin/env bash

microk8s ctr images rm localhost:32000/demo-remote-debug-golang:0.0.1
docker tag demo-remote-debug-golang:0.0.1 localhost:32000/demo-remote-debug-golang:0.0.1
docker push localhost:32000/demo-remote-debug-golang:0.0.1
docker rmi localhost:32000/demo-remote-debug-golang:0.0.1