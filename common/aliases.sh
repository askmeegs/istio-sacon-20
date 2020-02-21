#!/usr/local/bin/bash

alias demotour="python ./common/run_all.py ./1-install/demo.csv"
alias obs="python ./common/run_all.py ./2-observability/demo.csv"

alias mtls="python ./common/run_all.py ./3-mtls/demo.csv"
alias authz="python ./common/run_all.py ./4-authorization/demo.csv"

alias redirect="python ./common/run_all.py ./5-redirect/demo.csv"
alias canary="python ./common/run_all.py ./6-canary/demo.csv"
alias execrespy="RESPY_POD=$(kubectl get pod | grep respy | awk '{ print $1 }'); kubectl exec -it ${RESPY_POD} -c respy /bin/sh"
alias runrespy="watch -n 1 ./respy --u http://frontend:80/version --c 10 --n 500"
alias abtest="python ./common/run_all.py ./7-ab-testing/demo.csv"

alias circuit="python ./common/run_all.py ./8-circuit-breaking/demo.csv"
alias faultinject="python ./common/run_all.py ./9-fault-injection/demo.csv"