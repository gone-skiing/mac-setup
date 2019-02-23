#!/usr/bin/env bash

set -e

# pip install --upgrade pip setuptools wheel ansible

ansible-playbook setup-mac.yml -i inventory $* --tags "home-dir"

pushd ../mac-dev-playbook

ansible-playbook main.yml -i inventory $*

popd

ansible-playbook setup-mac.yml -i inventory $* --tags "dev-tools"


# Freeze latest versions after pip updates
virtual-env-freeze.sh

# Cleanup and validate home brew installation
# First deactivate python environment
deactivate

brew cleanup -s
brew doctor
brew missing