# External DNS

[Homepage](https://github.com/kubernetes-sigs/external-dns)
[Linode specifics](https://github.com/kubernetes-sigs/external-dns/blob/master/docs/tutorials/linode.md)

# Installation

Create the namespace

``` shell
kubectl create namespace external-dns
```

First install a secret depending on which providers you want to use

``` shell
kubectl create secret generic -n external-dns cloudflare-token --from-literal=token=<API_TOKEN>
```

Then apply the proper yaml files

``` shell
kubectl apply -f common.yaml
kubectl apply -f cloudflare.yaml
```
