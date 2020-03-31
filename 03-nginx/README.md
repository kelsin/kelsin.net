# Nginx Ingress Controller

[Homepage](https://github.com/nginxinc/kubernetes-ingress)
[Helm Chart](https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-helm/)

## Installation

Add the stable helm repo:

``` shell
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
```

First create a nginx namespace:

``` shell
kubectl create namespace nginx
```

Then install via the helm chart with the values.yaml file:

``` shell
helm upgrade --install nginx --values ./values.yaml --namespace nginx nginx-stable/nginx-ingress
```
