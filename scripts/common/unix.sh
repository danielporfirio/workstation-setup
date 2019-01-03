#!/usr/bin/env bash

echo
echo "Installing utilities for unix development"

brew install gnupg
brew install grep
brew install grc
brew install coreutils
brew install rbenv
brew install watch
brew install zlib

# For users of unixes
brew install pstree
brew install the_silver_searcher
brew install wget

# Install more recent versions of some macOS tools.
brew install openssh
brew install screen

# For developers of shell scripts
brew install jq
