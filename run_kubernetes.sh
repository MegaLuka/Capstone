#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=0905062524/pythonapp:1.0

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run pythonapp --image=$dockerpath
# aws sts get-caller-identity --profile default 
aws eks update-kubeconfig --region us-east-1 --name my-cluster
kubectl get svc
kubectl apply -f deployment.yml
kubectl apply -f nodeport.yml

# # Step 3:
# # List kubernetes pods
# kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
#sudo kubectl port-forward pythonapp 80:80

