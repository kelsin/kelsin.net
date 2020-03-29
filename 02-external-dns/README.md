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
kubectl create secret generic -n external-dns linode-token --from-literal=token=<API_TOKEN>
kubectl create secret generic -n external-dns do-token --from-literal=token=<API_TOKEN>
kubectl create secret generic -n external-dns aws-access-key --from-literal=aws-access-key-id=<AWS_ACCESS_KEY_ID> --from-literal=aws-secret-access-key=<AWS_SECRET_ACCESS_KEY>
```

Then apply the proper yaml files

``` shell
kubectl apply -f common.yaml
kubectl apply -f linode.yaml
kubectl apply -f do.yaml
kubectl apply -f aws.yaml
```
