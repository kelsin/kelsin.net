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

Create a secret for the prometheus/grafana admin username and password:

``` shell
htpasswd -c admin auth
kubectl create secret generic -n monitoring admin --from-literal=admin-user=admin --from-literal=admin-password=<PASSWORD> --from-file=auth
```

Then install via the helm chart with the values.yaml file:

``` shell
helm upgrade --install prometheus --values ./values.yaml --namespace monitoring stable/prometheus-operator
```
