# boilerplates

```shell
docker pull quay.io/keycloak/keycloak:22.0
docker pull postgres:14.5
```

```shell
minikube start --cpus='4' --memory='7951' \
  --addons='metrics-server' \
  --mount-string=$(pwd)/kubernetes/volume:/ppojin/volume \
  --mount \
  --ports "30080:30080,30443:30443,9090:9090,9443:9443"
minikube image load quay.io/keycloak/keycloak:22.0
minikube image load postgres:14.5

minikube image load ppojin/gateway:latest

kubectl apply -f ./kubernetes/apps/gateway.yaml
kubectl apply -f ./kubernetes/keycloak
```
