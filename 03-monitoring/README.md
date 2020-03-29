# Prometheus and Grafana

[Prometheus](https://prometheus.io/)
[Grafana](https://grafana.com/)
[Helm Chart](https://github.com/helm/charts/tree/master/stable/prometheus-operator)

## Installation

Add the stable helm repo:

``` shell
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
```

First create a monitoring namespace:

``` shell
kubectl create namespace monitoring
```

Then install via the helm chart with the values.yaml file:

``` shell
helm install prometheus --values ./values.yaml --namespace monitoring stable/prometheus-operator
```