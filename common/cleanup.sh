#!/usr/local/bin/bash

# remove all demo resources - keep istio installed

kubectl delete -f ./3-mtls/mtls.yaml
kubectl delete -f ./4-authorization/currency-allow-frontend-checkout.yaml
kubectl delete -f ./5/redirect/
kubectl delete -f ./6-canary/
kubectl delete -f ./7-ab-testing/
kubectl delete -f ./8-circuit-breaking/
kubectl delete -f ./9-fault-injection/


kubectl apply -f ./1-install/k8s-manifests.yaml
kubectl apply -f ./1-install/istio-manifests.yaml