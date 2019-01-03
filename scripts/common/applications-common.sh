# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew cask install gpg-suite

brew cask install flycut
brew cask install spectacle

brew cask install dash
brew cask install postman
brew cask install ngrok
brew cask install mjml
brew cask install alfred
brew cask install gimp
brew cask install vlc
brew cask install kaleidoscope
brew cask install anki

# Terminals
brew cask install iterm2

# Browsers
brew cask install google-chrome
brew cask install firefox

# Communication
brew cask install slack
brew cask install skype

# Text Editors
brew cask install macdown
brew cask install macvim
brew cask install visual-studio-code

# Virtual drivers
brew cask install dropbox
brew cask install google-backup-and-sync

#Music player
brew cask install spotify


set -e
