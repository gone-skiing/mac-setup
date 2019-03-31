set -e

# Try to deactivate and recreate virtual environment before running this.

brew uninstall --ignore-dependencies python3
brew cleanup 
brew install python3
