#!/bin/sh

kubectl create configmap grafana-dashboards --from-file=grafana-dashboards -o json --dry-run | kubectl apply -f -

kubectl create -f deployment.yml
kubectl create -f service.yml

kubectl get pods -w
