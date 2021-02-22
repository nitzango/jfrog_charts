#!/bin/bash

# ============================================================================
# Apolicy requires this file to apply remediation patches to your Helm chart.
# Run "apolicy helm install" to use Apolicy patches.
# For more information, follow the link: https://my.apolicy.io/app/docs
# ============================================================================
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cat <&0 > "$DIR"/all.yaml
kustomize build "$DIR" && rm "$DIR"/all.yaml
