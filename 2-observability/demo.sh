#!/usr/local/bin/bash

declare -A commands
commands=(
            ["Monitoring dashboard"]="istioctl dashboard prometheus &"
            ["Service graph dashboard"]="istioctl dashboard kiali &"
            ["Metrics dashboard"]="istioctl dashboard grafana &"
            ["Tracing dashboard"]="istioctl dashboard jaeger &"
   )

source ./common/demo-scaffold.sh
run_all "$(declare -p commands)"