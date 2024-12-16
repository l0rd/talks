#!/usr/bin/env bash

# Start the outyet Pod
k apply -f outyet.yaml

# Create a copy of the Pod
# and add an IDE
k debug-cde outyet \
  --image ghcr.io/l0rd/outyet-dev:latest \
  --copy-to outyet-debug \
  --share-processes \
  --git-repository https://github.com/l0rd/outyet.git

