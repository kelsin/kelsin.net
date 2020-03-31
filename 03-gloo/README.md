# Gloo Gateway

[Homepage](https://docs.solo.io/gloo/)

## Installation

Add the gloo helm repo:

``` shell
helm repo add gloo https://storage.googleapis.com/solo-public-helm
helm repo update
```

First create a gloo namespace:

``` shell
kubectl create namespace gloo-system
```

Then install via the helm chart with the values.yaml file:

``` shell
helm upgrade --install gloo --values ./values.yaml --namespace gloo-system gloo/gloo
```
