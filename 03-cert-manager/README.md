# Cert Manager

[Homepage](https://cert-manager.io/)

## Installation

Create the namespace

``` shell
kubectl create namespace cert-manager
kubectl label namespace cert-manager monitor=true
```

Now install cert-manager via helm

``` shell
helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v0.14.0 --values ./values.yaml
```

Then create the lets encrypt issuers

``` shell
kubectl apply -f letsencrypt.yaml
```
