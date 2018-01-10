## Alertmanager

Create templates:

```
kubectl create configmap alertmanager-templates --from-file=alertmanager-templates -o json --dry-run | kubectl apply -f -

```

## TODOs

* Prometheus rules.
* Grafana dashboards.