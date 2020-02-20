#!/usr/local/bin/bash

declare -A commands
commands=(
            ["Istio Pods"]="kubectl get pods -n istio-system"
            ["Istio Services"]="kubectl get services -n istio-system"
            ["Sample app pods - default namespace"]="kubectl get pods"
            ["Sample app services - default namespace"]="kubectl get services"
            ["Istio IngressGateway - public IP"]="kubectl get services -n istio-system | grep istio-ingressgateway"
   )

source ./common/demo-scaffold.sh
run_all "$(declare -p commands)"