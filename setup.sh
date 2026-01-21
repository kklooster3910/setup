echo "🚀 Setting up new machine..."

echo "Backing up current config if exists..."
BACKUP_DIR=~/dotfiles_backup_$(date +%Y-%m-%d_%H-%M)
mkdir -p $BACKUP_DIR
[ -f ~/.zshrc ] && cp ~/.zshrc $BACKUP_DIR/.zshrc.backup
[ -f ~/Library/Application\ Support/Code/User/settings.json ] && cp ~/Library/Application\ Support/Code/User/settings.json $BACKUP_DIR/settings.json.backup

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle install

while read extension; do
    code --install-extension $extension
done < vscode/extensions.txt

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

cp vscode/settings.json ~/Library/Application\ Support/Code/User/

echo "✅ Setup complete!"

# TODO: add copilot adding to script for intelliJ