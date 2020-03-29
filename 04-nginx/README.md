# Nginx Ingress Controller

[Homepage](https://kubernetes.github.io/ingress-nginx/)
[Helm Chart](https://github.com/helm/charts/tree/master/stable/nginx-ingress)

## Installation

Add the stable helm repo:

``` shell
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
```

First create a nginx namespace:

``` shell
kubectl create namespace nginx
```

Then install via the helm chart with the values.yaml file:

``` shell
helm install nginx --values ./values.yaml --namespace nginx stable/nginx-ingress
```
