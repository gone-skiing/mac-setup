#!/usr/bin/env bash

set -e

ansible-playbook main.yml -i inventory $1

pushd ../mac-dev-playbook

ansible-playbook main.yml -i inventory

popd