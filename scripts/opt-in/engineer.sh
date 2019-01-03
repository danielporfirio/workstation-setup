#!/usr/bin/env bash
echo
echo "Installing the main tools for a software engineer polyglot"

# All these applications are independent, so if one
# fails to install, don't stop.
set +e

source ${MY_DIR}/scripts/opt-in/docker.sh
source ${MY_DIR}/scripts/opt-in/kubernetes.sh
source ${MY_DIR}/scripts/opt-in/dotnet.sh
source ${MY_DIR}/scripts/opt-in/golang.sh
source ${MY_DIR}/scripts/opt-in/node.sh
source ${MY_DIR}/scripts/opt-in/python.sh
source ${MY_DIR}/scripts/opt-in/ruby.sh

set -e