echo
echo 'Installing SDKMAN!...'

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo 'Installing Java...'

wget -P $TMPDIR https://support.apple.com/downloads/DL1572/en_US/javaforosx.dmg && open $TMPDIR/javaforosx.dmg
yes | sdk install java 8.0.192-zulu
yes | sdk install java 11.0.1-open
sdk default java 11.0.1-open

source ${MY_DIR}/scripts/opt-in/java-tools.sh
