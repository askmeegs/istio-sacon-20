#!/usr/local/bin/bash

declare -A commands
commands=(
            ["Getting nodes"]="kubectl get nodes"
            ["Getting secrets"]="kubectl get secrets"
            ["Getting pods"]="kubectl get pods"
            ["Getting deployments"]="kubectl get deployments"
   )

source ./common/demo-scaffold.sh
run_all "$(declare -p commands)"