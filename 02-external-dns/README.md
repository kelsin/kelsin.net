# External DNS

[Homepage](https://github.com/kubernetes-sigs/external-dns)
[Linode specifics](https://github.com/kubernetes-sigs/external-dns/blob/master/docs/tutorials/linode.md)

# Installation

Create the namespace

``` shell
kubectl create namespace external-dns
```

First install a secret with your linode api token:

``` shell
kubectl create secret generic -n external-dns linode-token --from-literal=token=<API_TOKEN>
```

Then apply the linode.yaml

``` shell
kubectl apply -f linode.yaml
```
