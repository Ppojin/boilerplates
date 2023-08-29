# boilerplates

```sh
minikube start --cpus='4' --memory='7951'
minikube addons enable metrics-server
minikube addons enable ingress
minikube addons enable ingress-dns
```

```sh
kubectl apply -f kubernetes/apps/postgres.yaml
nohup kubectl port-forward --address=0.0.0.0 service/postgres-svc 5432:5432 > postgres.out &
```