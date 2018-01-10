#!/bin/sh

kubectl delete deployments/grafana
kubectl delete configmap/grafana-dashboards
kubectl delete service/grafana

kubectl get pods -w
