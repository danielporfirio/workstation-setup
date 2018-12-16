echo
echo "Installing most recent version of NodeJS"

brew install node

echo
echo "Update npm"
npm install -g npm

echo
echo "Installing global NodeJS Packages"

npm install --global yo
npm install --global webpack
npm install --global grunt-cli
npm install --global gulp-cli