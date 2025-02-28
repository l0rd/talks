#!/usr/bin/env bash

minikube start --container-runtime=cri-o --feature-gates=ImageVolume=true --kubernetes-version=v1.32.2 --driver=podman

