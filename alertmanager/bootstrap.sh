#!/bin/sh

kubectl create configmap alertmanager-templates --from-file=alertmanager-templates -o json --dry-run | kubectl apply -f -

kubectl create -f configmap.yml
kubectl create -f deployment.yml
kubectl create -f service.yml

kubectl get pods -w
