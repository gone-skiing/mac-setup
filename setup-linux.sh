#!/usr/bin/env bash

# mkdir -p ~/dev
# cd ~/dev
# git clone https://github.com/gone-skiing/mac-setup.git
# create secrets.local.yml in ~/dev/mac-setup with
#   git_token

set -e

ansible-playbook setup-linux.yml -i inventory $*