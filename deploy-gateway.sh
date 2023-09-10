#!/bin/bash
kubectl delete deployments spring-gateway
docker rmi ppojin/gateway:latest || echo "docker rmi code[$?]"
docker build --tag ppojin/gateway:latest ./gateway
#minikube image list
minikube image load ppojin/gateway:latest && echo "image load success"
kubectl apply -f ./kubernetes/apps/gateway.yaml
