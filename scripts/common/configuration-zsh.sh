echo
echo "Configuring ZSH"

brew install zsh 
brew install fasd

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo
echo "Installing other oh-my-zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo
echo "Setting up the oh-my-zsh theme"
cp files/catks.zsh-theme ~/.oh-my-zsh/themes
