#@IgnoreInspection BashAddShebang

cd $HOME

export ENV_NAME=python_env

pip freeze > $HOME/dev/mac-setup/pip-requirements.txt
