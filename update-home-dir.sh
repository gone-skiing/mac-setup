#!/usr/bin/env bash

set -e

ansible-playbook main.yml -i inventory $*
