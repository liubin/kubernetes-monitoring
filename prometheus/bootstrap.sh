#!/bin/sh

kubectl create configmap prometheus-rules --from-file=prometheus-rules -o json --dry-run | kubectl apply -f -

kubectl create -f configmap.yml
kubectl create -f deployment.yml
kubectl create -f service.yml

kubectl get pods -w
