# Gloo

[Homepage](https://docs.solo.io/gloo/latest/)

# Installation

Install as an ingress controller via helm:

``` shell
helm repo add gloo https://storage.googleapis.com/solo-public-helm
helm repo update
kubectl create namespace gloo-system
helm upgrade gloo gloo/gloo --namespace gloo-system --set gateway.enabled=false,ingress.enabled=true
```

**Note:** This does create a `LoadBalancer` service and will cost $10/month on linode.
