#!/bin/sh
kubectl create namespace cert-manager
helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v0.14.0
kubectl apply -f letsencrypt.yaml
