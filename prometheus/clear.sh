#!/bin/sh

kubectl delete deployments/prometheus
kubectl delete configmap/prometheus-config
kubectl delete configmap/prometheus-rules
kubectl delete service/prometheus

kubectl get pods -w
