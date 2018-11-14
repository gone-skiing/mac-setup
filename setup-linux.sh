#!/usr/bin/env bash

set -e

ansible-playbook setup-linux.yml -i inventory $*