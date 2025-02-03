#!/usr/bin/env bash

microk8s helm upgrade --install -f ./helm/values.yaml demo-golang-remote-debug ./helm