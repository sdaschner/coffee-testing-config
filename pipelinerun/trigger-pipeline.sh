#!/bin/bash
set -euo pipefail
cd ${0%/*}

kubectl create -f pipelinerun.yml -n tekton-pipelines

sleep 1
tkn pipelinerun logs -f -n tekton-pipelines