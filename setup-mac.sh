set -e

# xcode-select --install

# Clone repos

# sudo easy_install pip

# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install python

# pip install --upgrade pip setuptools wheel ansible

# ./virtual-env-create.sh

# touch secrets.local.yml
# add git_token, releng password, dock

# mkdir ~/.m2

# chmod 600 ~/.netrc

# mac-dev-playbook/ansible-galaxy install -r requirements.yml

# clean up ekrylov

# gnu-tar



# ---

ansible-playbook setup-mac.yml -i inventory $* --tags "home-dir"

pushd ../mac-dev-playbook

ansible-playbook main.yml -i inventory $*

popd

ansible-playbook setup-mac.yml -i inventory $* --tags "dev-tools"

# Freeze latest versions after pip updates
./virtual-env-freeze.sh

# Cleanup and validate home brew installation
brew cleanup -s
brew doctor
brew missing
