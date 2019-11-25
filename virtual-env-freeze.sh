#@IgnoreInspection BashAddShebang

cd $HOME || exit 1

export ENV_NAME=python_env

pip freeze > $HOME/dev/mac-setup/pip-requirements.txt
