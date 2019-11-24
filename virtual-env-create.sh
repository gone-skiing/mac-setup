#@IgnoreInspection BashAddShebang

# Remember to deactivate old environment before running this script.

set -e

#brew install openssl
#cd /usr/local/lib
#sudo ln -s /usr/local/opt/openssl/lib/libssl.dylib libssl.dylib
#sudo ln -s /usr/local/opt/openssl/lib/libcrypto.dylib libcrypto.dylib

sudo -H pip3 install --upgrade pip

sudo -H pip3 install virtualenv

export ENV_NAME=python_env

cd $HOME

if [ -d $ENV_NAME ]
then
    mv $ENV_NAME ${ENV_NAME}.old
fi


python3.7 -m venv $ENV_NAME

source $HOME/$ENV_NAME/bin/activate

pip3 install -r $HOME/dev/mac-setup/pip-requirements.txt

which ansible

ansible --version

which python

python --version
