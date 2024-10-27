#!/usr/bin/env bash

# Start the outyet Pod
k apply -f outyet.yaml

# Pod Troubleshooting by Copy
k debug -it outyet \
      --image ghcr.io/l0rd/outyet-dev:latest \
       --copy-to outyet-debug \
       --share-processes -- bash

