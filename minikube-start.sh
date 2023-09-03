#!/bin/bash

minikube start --cpus='4' --memory='7951' \
  --ports=30080:30080,30443:30443,9090:9090,9443:9443 \
  --mount --mount-string=$(pwd)/kubernetes/volume:/ppojin/volume \
  --addons='metrics-server'
  
minikube image load quay.io/keycloak/keycloak:22.0
minikube image load postgres:14.5

minikube image load ppojin/gateway:latest

kubectl apply -f ./kubernetes/keycloak
kubectl apply -f ./kubernetes/apps/gateway.yaml

docker port minikube
