#!/usr/bin/env bash
#
# setup.sh: run the workstation setup
#
# Arguments:
#   - a list of components to install, see scripts/opt-in/ for valid options

# Fail immediately if any errors occur
set -e

echo "Caching password..."
# Removes the user's cached credentials entirely
sudo -K
# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

clear

MY_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/homebrew.sh
source ${MY_DIR}/scripts/common/configuration-bash.sh
source ${MY_DIR}/scripts/common/configuration-zsh.sh

brew tap caskroom/cask

source ${MY_DIR}/scripts/common/git.sh
source ${MY_DIR}/scripts/common/applications-common.sh
source ${MY_DIR}/scripts/common/unix.sh
#source ${MY_DIR}/scripts/common/configuration-osx.sh
#source ${MY_DIR}/scripts/common/configurations.sh

# For each command line argument, try executing the corresponding script in opt-in/
for var in "$@"
do
    echo "$var"
    FILE=${MY_DIR}/scripts/opt-in/${var}.sh
    echo "$FILE"
    if [ -f $FILE ]; then
        source ${FILE}
    else
       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
    fi
done