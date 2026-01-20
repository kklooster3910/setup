<!-- TODO: set this up for intellij -->

# Dotfiles

My personal development environment setup for macOS.

## What's Included

- **Homebrew packages**: Databases, dev tools, CLI utilities
- **Applications**: VS Code, IntelliJ, iTerm2, MongoDB Compass
- **Shell config**: zsh configuration
- **Git config**: Aliases and settings
- **SSH config**: Host configurations
- **VS Code**: Settings and extensions

## Fresh Machine Setup (Mac)

### 1. Install Xcode Command Line Tools

```bash
xcode-select --install

## Clone Repo
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

## Run setup script
chmod +x setup.sh
./setup.sh

## Generate SSH key
ssh-keygen -t ed25519 -C "your.email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

## Copy public key to github
pbcopy < ~/.ssh/id_ed25519.pub
# Then paste at: https://github.com/settings/keys
```
