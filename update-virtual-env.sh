#!/usr/bin/env bash

export ENV_NAME=python365_env

cd $HOME

pip freeze > $HOME/dev/mac-setup/pip-requirements.txt

virtualenv -p /usr/local/bin/python3 $ENV_NAME

source $HOME/$ENV_NAME/bin/activate

pip install -r $HOME/dev/mac-setup/pip-requirements.txt

echo "Update .zshrc.local to new location, remove old location, reopen all shell windows."