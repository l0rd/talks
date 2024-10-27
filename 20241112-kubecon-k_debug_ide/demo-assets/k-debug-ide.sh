#!/usr/bin/env bash

k debug-ide outyet \
  --image ghcr.io/l0rd/outyet-dev:latest \
  --copy-to outyet-debug \
  --share-processes \
  --git-repository https://github.com/l0rd/outyet.git

