## Alertmanager

Create templates:

```
kubectl create configmap alertmanager-templates --from-file=alertmanager-templates -o json --dry-run | kubectl apply -f -

```

## TODOs

* Prometheus rules.
* Grafana dashboards.

## Great thanks

* https://github.com/kubernetes/kube-state-metrics
* https://github.com/kayrus/prometheus-kubernetes
* https://github.com/kkohtaka/kubernetes-metrics
