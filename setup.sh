#!/usr/bin/env bash

set -e

ansible-playbook main.yml -i inventory $1 --tags "home-dir"

pushd ../mac-dev-playbook

ansible-playbook main.yml -i inventory

popd

ansible-playbook main.yml -i inventory $1 --tags "dev-tools"
