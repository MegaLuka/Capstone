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
aws eks create-cluster --region us-east-1 --name my-cluster2 --kubernetes-version 1.28 \
   --role-arn arn:aws:iam::837117057604:role/myAmazonEKSClusterRole \
   --resources-vpc-config subnetIds=subnet-04c3a7789e530823a,subnet-026079be198c13213,subnet-0295f0553ea92cb97
aws eks update-kubeconfig --region us-east-1 --name my-cluster2
kubectl get svc
kubectl apply -f deployment.yml
kubectl apply -f nodeport.yml

# # Step 3:
# # List kubernetes pods
# kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
#sudo kubectl port-forward pythonapp 80:80

