#!/bin/bash
docker rmi ppojin/gateway:latest || echo $?
docker build --tag ppojin/gateway:latest ./gateway
minikube image load ppojin/gateway:latest
kubectl apply -f ./kubernetes/apps/gateway.yaml
