#!/usr/bin/env bash

set -e

# pip install --upgrade pip setuptools wheel ansible

ansible-playbook setup-mac.yml -i inventory $1 --tags "home-dir"

pushd ../mac-dev-playbook

ansible-playbook main.yml -i inventory $1

popd

ansible-playbook setup-mac.yml -i inventory $1 --tags "dev-tools"
