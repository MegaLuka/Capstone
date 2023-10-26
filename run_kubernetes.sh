#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=0905062524/nodeapp:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run nodeapp --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
sudo kubectl port-forward nodeapp 3000:3000

