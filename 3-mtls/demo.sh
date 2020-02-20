#!/usr/local/bin/bash

declare -A commands
commands=(
            ["Getting default MeshPolicy"]="kubectl get meshpolicy default -o yaml"
            ["Getting proxy mTLS status"]="POD=$(kubectl get pod -l app=adservice -o jsonpath=\"{.items[0].metadata.name}\"); istioctl authn tls-check $POD | tail)"
            ["Applying mTLS policy"]="kubectl apply -f mtls.yaml"
            ["Getting default MeshPolicy again"]="kubectl get meshpolicy -o yaml"
            ["Getting global DestinationRule"]="kubectl get destinationrule -n istio-system default -o yaml"
            ["Getting proxy mTLS status again"]="POD=$(kubectl get pod -l app=adservice -o jsonpath=\"{.items[0].metadata.name}\"); istioctl authn tls-check $POD | tail)"
   )

source ./common/demo-scaffold.sh
run_all "$(declare -p commands)"