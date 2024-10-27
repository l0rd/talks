#!/usr/bin/env bash

k debug -it \
      outyet \
      --image ghcr.io/l0rd/outyet-dev:latest \
      --copy-to outyet-debug \
      --share-processes -- bash     
 
