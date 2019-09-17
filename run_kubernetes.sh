#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=asalfo/housingapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run housingapp-k8s --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME
# Forward the container port to a host
kubectl port-forward $POD_NAME 8000:80
