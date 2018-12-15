echo
echo "Installing Python tools and Python 3.6.5"
brew install pyenv
eval "$(pyenv init -)"
pyenv install 3.6.5
pyenv global 3.6.5
