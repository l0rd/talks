#!/usr/bin/env bash

# Start the outyet Pod
k apply -f outyet.yaml

# Create a copy of the Pod
# and add an IDE
k debug-ide outyet \
  --image ghcr.io/l0rd/outyet-dev:latest \
  --copy-to outyet-debug \
  --share-processes \
  --git-repository https://github.com/l0rd/outyet.git

# Wait for the CDE to be ready
k get dw outyet-debug-dw -w

