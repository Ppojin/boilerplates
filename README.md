# boilerplates

```shell
docker pull quay.io/keycloak/keycloak:22.0
docker pull postgres:14.5
```

```shell
minikube start --cpus='4' --memory='7951' \
  --addons='metrics-server'\
  --mount-string=$(pwd)/kubernetes/volume:/ppojin/volume\
  --mount
minikube image load quay.io/keycloak/keycloak:22.0
minikube image load postgres:14.5
```

```shell
kubectl apply -f ./kubernetes/keycloak
nohup kubectl port-forward --address=0.0.0.0 service/postgres-svc 5432:5432 > postgres.out &
```