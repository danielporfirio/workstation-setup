echo
echo "Configuring dotfiles"

rm -rf ~/.dotfiles
pushd ~/
if [ ! -d ~/.dotfiles ]; then
    git clone https://github.com/danielporfirio/dotfiles.git ~/.dotfiles
    rsync   --exclude ".git/" \
            --exclude ".DS_Store" \
            --exclude ".osx" \
            --exclude "bootstrap.sh" \
            --exclude "README.md" \
            --exclude "LICENSE-MIT.txt" \
		        -av ~/.dotfiles ~/
fi
popd

echo
echo "Configuring bash"

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew install grep
brew install grc
brew install coreutils
brew install rbenv
brew install watch
