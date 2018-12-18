#!/bin/bash
set -e

banner() {
echo "================================================================"
echo "$1"
echo "================================================================"
}

banner "Building docker image..."
docker build -t terraform-provider-ldap .
banner "Copying the binary..."
docker run -v ${PWD}/bin:/out:rw terraform-provider-ldap