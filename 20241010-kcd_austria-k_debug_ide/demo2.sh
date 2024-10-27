#!/usr/bin/env bash

# Create a DevWorkspace for devlopment and 
# debugging of the outyet application
k apply -f outyet-devworkspace.yaml

# Wait for the CDE to be ready
k get dw outyet-dw -w

