#!/usr/bin/env bash

kubectl apply -f pod.yaml
kubectl wait --for=condition=ready --timeout=20s pod/imgvol
kubectl exec imgvol -- ls /volume/

