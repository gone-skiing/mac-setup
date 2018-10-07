#@IgnoreInspection BashAddShebang

set -e

sudo -H pip install --upgrade pip

sudo -H pip install virtualenv

export ENV_NAME=python_env

cd $HOME

virtualenv -p /usr/local/bin/python3 $ENV_NAME

source $HOME/$ENV_NAME/bin/activate

pip install -r $HOME/dev/mac-setup/pip-requirements.txt

which ansible

ansible --version

which python

python --version