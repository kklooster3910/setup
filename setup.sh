echo "🚀 Setting up new machine..."

if ! command -v brew &> /dev/null then
    /bin/bash "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle install

while read extension; do
    code --install-extension $extension
done < vscode/extensions.txt

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

cp vscode/settings.json ~/Library/Application\ Support/code/User/

echo "✅ Setup complete!"